class AddTableTags < ActiveRecord::Migration[7.1] #P2
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
