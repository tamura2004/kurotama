class Pcs::NamesController < ApplicationController
  def new
    @names = GivenNameMaster.sample(9).map do |name|
      Pcs::Name.new(name: name)
    end
  end

  def create
    pc.update(name: params[:pcs_name][:name])
    redirect_to pc
  end
end
