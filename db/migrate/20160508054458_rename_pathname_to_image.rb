class RenamePathnameToImage < ActiveRecord::Migration
  def change
    rename_column :images, :pathname, :source
  end
end
