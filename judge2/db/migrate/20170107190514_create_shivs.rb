class CreateShivs < ActiveRecord::Migration
  def change
    create_table :shivs do |t|
      t.text :name
      t.text :password

      t.timestamps null: false
    end
  end
end
