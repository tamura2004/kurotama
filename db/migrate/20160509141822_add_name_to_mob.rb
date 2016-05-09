class AddNameToMob < ActiveRecord::Migration
  def change
    add_column :mobs, :name, :string
    remove_column :mobs, :mob_book_id
    add_column :mobs, :str, :integer
    add_column :mobs, :dex, :integer
    add_column :mobs, :con, :integer
    add_column :mobs, :weapon, :integer
    add_column :mobs, :armor, :integer
    add_column :mobs, :soul, :integer
  end
end
