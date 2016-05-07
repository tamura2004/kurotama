class CreateMobs < ActiveRecord::Migration
  def change
    create_table :mobs do |t|
      t.integer :hp
      t.references :mob_book, index: true, foreign_key: true
      t.references :map, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
