class AddArmorToPcs < ActiveRecord::Migration
  def change
    add_column :pcs, :armor, :string
  end
end
