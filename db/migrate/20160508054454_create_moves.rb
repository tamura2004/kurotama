class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.references :pc, index: true, foreign_key: true
      t.references :mob, index: true, foreign_key: true
      # t.references :boss, index: true, foreign_key: true
      # t.references :item, index: true, foreign_key: true
      t.references :map, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
