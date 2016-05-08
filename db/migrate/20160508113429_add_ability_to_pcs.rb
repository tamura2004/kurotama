class AddAbilityToPcs < ActiveRecord::Migration
  def change
    add_column :pcs, :str, :integer
    add_column :pcs, :dex, :integer
    add_column :pcs, :con, :integer
    add_column :pcs, :int, :integer
    add_column :pcs, :wis, :integer
    add_column :pcs, :cha, :integer
    add_column :pcs, :level, :integer
  end
end
