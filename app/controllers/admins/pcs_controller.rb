class Admins::PcsController < ApplicationController
  def delete_all
    Pc.delete_all
    redirect_to :new_menu
  end
end
