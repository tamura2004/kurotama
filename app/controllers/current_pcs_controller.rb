class CurrentPcsController < ApplicationController
  def create
    session[:pc_id] = params[:id]
    redirect_to :new_move_form
  end
end
