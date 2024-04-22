class Post < ApplicationRecord
    belongs_to :user #P1
    has_many :post_tags #P2
    has_many :tags, through: :post_tags #P2
    belongs_to :parent, class_name: 'Post', optional: true #P3
    has_many :children, class_name: 'Post', foreign_key: 'parent_id' #P3

    #Validaciones (P5)
    validates :title, presence: { message: "Every post needs a title." }
    validates :content, presence: { message: "Don't forget to write some content" }
    validates :user_id, presence: { message: "Post must be associated with a user." }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Answers count can't be negative." }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Likes count can't be negative." }

    before_validation :default_published_at

    private

    def default_published_at
        self.published_at ||= Time.current
    end

end