class CurrentPcsController < ApplicationController
  def create
    session[:pc_id] = params[:id]
    redirect_to :new_pcs_move
  end
end
