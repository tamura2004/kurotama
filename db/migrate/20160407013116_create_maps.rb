class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|

      t.integer :no
      t.string :name
      t.boolean :lock

      t.references :map

      t.timestamps null: false
    end
  end
end
