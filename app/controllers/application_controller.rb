class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def erand(n)
    (-n*Math.log(rand)).to_i
  end

end
