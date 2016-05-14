class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.string :type

      t.string :name
      t.string :map_name
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

      t.string  :job_name
      t.string  :race_name
      t.string  :weapon_name
      t.string  :shield_name
      t.string  :armor_name
      t.string  :spell_name
      t.string  :ring_name

      t.timestamps null: false
    end
  end
end
