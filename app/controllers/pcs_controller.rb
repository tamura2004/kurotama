class PcsController < ApplicationController
  before_action :set_pc, only: [:show]
  def index
    @pcs = Pc.all
  end

  def show
    @pc.build_travels
  end

  private

    def set_pc
      @pc = Pc.find(params[:id])
    end
end
