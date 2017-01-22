class CreateShivas < ActiveRecord::Migration
  def change
    create_table :shivas do |t|
      t.string :color

      t.timestamps null: false
    end
  end
end
