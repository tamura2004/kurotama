class Mob < ActiveRecord::Base
  belongs_to :mob_book
  delegate :name, to: :mob_book

  def max_hp
    mob_book.hp
  end

end
