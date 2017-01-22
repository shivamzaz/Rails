class AddColorToUser < ActiveRecord::Migration
  def change
    add_column :users, :color, :string ,:default=> "%06x" % (rand*0xffffff)
  end
end
