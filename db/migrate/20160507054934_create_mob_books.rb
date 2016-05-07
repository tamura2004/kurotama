class CreateMobBooks < ActiveRecord::Migration
  def change
    create_table :mob_books do |t|
      t.string :name
      t.integer :hp
      t.integer :soul
      t.integer :attack
      t.integer :defence
      t.integer :speed

      t.timestamps null: false
    end
  end
end
