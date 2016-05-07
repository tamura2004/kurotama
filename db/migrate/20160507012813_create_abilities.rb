class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.references :pc, index: true, foreign_key: true

      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha

      t.integer :hp
      t.integer :fp
      t.integer :mp

      t.timestamps null: false
    end
  end
end
