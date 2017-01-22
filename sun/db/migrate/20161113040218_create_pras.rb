class CreatePras < ActiveRecord::Migration
  def change
    create_table :pras do |t|
      t.text :color
      t.string :name

      t.timestamps null: false
    end
  end
end
