class CurrentPcsController < ApplicationController
  def create
    session[:pc_id] = params[:id]
    redirect_to :maps
  end
end
