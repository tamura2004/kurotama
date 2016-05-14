class Pcs::Name
  include ActiveModel::Model

  attr_accessor :name

  def path
    [self, pcs_name: { name: name }]
  end

end
