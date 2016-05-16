class Item < ActiveRecord::Base
  after_initialize :set_default_value

  private
    def set_default_value
      self.image ||= "item/ソード.png" if name =~ /剣/
      self.image ||= "item/シールド.png" if name =~ /シールド/
      self.image ||= "item/アーマー.png" if name =~ /鎧/
      self.image ||= "item/リング.png" if name =~ /指輪/
      self.image ||= "item/エスト瓶.png" if name =~ /エスト/
    end

end
