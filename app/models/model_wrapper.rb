class ModelWrapper
  include ActiveModel::Model

  attr_accessor :object

  def self.build(objects)
    objects.map do |object|
      new(object)
    end
  end

  def initialize(object)
    @object = object
  end

  def method_missing(name, *args)
    @object.send name, *args
  end
end
