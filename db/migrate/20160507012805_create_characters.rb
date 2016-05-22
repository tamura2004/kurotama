class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.string :type
      t.references :map
      t.references :bonefire

      t.string :name, null: false
      t.string :image

      t.integer :log_id
      t.integer :est

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
      # t.string  :race
      # t.references  :weapon
      # t.references  :shield
      # t.references  :armor
      # t.references  :spell
      # t.references  :ring

      t.timestamps null: false
    end
  end
end
