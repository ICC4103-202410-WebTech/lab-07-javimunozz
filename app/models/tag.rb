class Tag < ApplicationRecord
    has_many :post_tags #P2
    has_many :posts, through: :post_tags #P2

    #Validaciones (P6)
    validates :name, presence: { message: "Tag name can't be blank." }, uniqueness: { case_sensitive: false, message: "Each tag must be unique." }
  end
  