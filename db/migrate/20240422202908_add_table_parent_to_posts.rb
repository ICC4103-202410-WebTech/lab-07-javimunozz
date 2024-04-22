class AddTableParentToPosts < ActiveRecord::Migration[7.1] #P3
  def change
    add_reference :posts, :parent, foreign_key: { to_table: :posts }
  end
end
