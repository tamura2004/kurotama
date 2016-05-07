class CreatePcs < ActiveRecord::Migration
  def change
    create_table :pcs do |t|
      t.string :name

      t.integer :soul
      t.integer :hp
      t.integer :fp
      t.integer :mp

      t.references :map, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
