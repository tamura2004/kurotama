class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.string :type

      t.string :name
      t.string :map
      t.string :image

      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha

      t.integer :level
      t.integer :soul
      t.integer :hp
      t.integer :fp

      t.string  :job
      t.string  :race
      t.string  :weapon
      t.string  :shield
      t.string  :armor
      t.string  :spell
      t.string  :ring

      t.timestamps null: false
    end
  end
end
