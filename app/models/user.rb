class User < ApplicationRecord
    has_many :posts #P1

    #Validaciones (P4)
    validates :name, presence: { message: "Please don't leave your name blank." }
    validates :email, presence: { message: "Email can't be blank." }, uniqueness: { case_sensitive: false, message: "This email is already taken." }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Invalid email format." }
    validates :password, presence: { message: "Password can't be empty." }, length: { minimum: 6, message: "Password must be at least 6 characters long." }

    before_validation:downcase_email

    private

    def downcase_email
        self.email.downcase!
    end
end