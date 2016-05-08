class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def pc
    id = session[:pc_id] || 0
    @pc ||= Pc.find(id)
  end

end
