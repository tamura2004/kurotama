class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|

      t.string :name, null: false

      t.references :right
      t.references :left

      t.timestamps null: false
    end
  end
end
