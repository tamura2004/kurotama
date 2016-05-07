class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|

      t.references :pc, index: true, foreign_key: true
      t.references :map, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
