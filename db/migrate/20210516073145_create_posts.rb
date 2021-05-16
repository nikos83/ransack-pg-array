class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :category, array: true, null: false, default: []

      t.timestamps
    end
  end
end
