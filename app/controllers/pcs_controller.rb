class PcsController < ApplicationController
  before_action :set_pc, only: [:show]
  def index
    @pcs = Pc.all
  end

  def show
  end

  def new
    redirect_to :new_pc_name_form
  end

  private

    def set_pc
      @pc = Pc.find(params[:id])
    end
end
