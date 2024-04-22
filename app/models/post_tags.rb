class PostTag < ApplicationRecord
    belongs_to :post #P2
    belongs_to :tag #P2
  end  