class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def pc
    @pc ||= Pc.find(0)
  end

end
