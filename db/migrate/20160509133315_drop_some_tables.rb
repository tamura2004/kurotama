class DropSomeTables < ActiveRecord::Migration
  def change
    drop_table :moves
    drop_table :travels
    drop_table :menus

  end
end
