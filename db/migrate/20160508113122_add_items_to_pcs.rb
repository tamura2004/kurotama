class AddItemsToPcs < ActiveRecord::Migration
  def change
    add_column :pcs, :weapon, :string
    add_column :pcs, :shield, :string
    add_column :pcs, :ring, :string
    add_column :pcs, :item, :string
    add_column :pcs, :est, :integer
  end
end
