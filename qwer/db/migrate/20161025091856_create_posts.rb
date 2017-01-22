class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :color
      t.text :content

      t.timestamps null: false
    end
  end
end
