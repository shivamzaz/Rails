class AddHusbandNameToFather < ActiveRecord::Migration
  def change
    add_column :fathers, :HusbandName, :string
  end
end
