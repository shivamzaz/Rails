class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.references :father, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
