class AddJobToPcs < ActiveRecord::Migration
  def change
    add_column :pcs, :job, :string
    add_column :pcs, :race, :string
  end
end
