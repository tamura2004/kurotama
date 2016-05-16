class PcsController < ApplicationController
  before_action :set_pc, only: [:show]
  def index
    @pcs = Cards::Selects::Pc.build(Pc.all)
  end

  def show
    @cards = []
    @cards << Cards::Shows::Pc.new(@pc)
    @cards << Item.new(name: @pc.weapon)
    @cards << Item.new(name: @pc.shield)
    @cards << Item.new(name: @pc.armor)
    @cards << Item.new(name: @pc.ring)
    @cards << Item.new(name: @pc.spell)
    @cards << Item.new(name: "エスト瓶")
  end

  def new
    redirect_to :new_pcs_job
  end

  def update
    session[:pc_id] = params[:id]
    redirect_to :maps
  end

  private

    def set_pc
      @pc = Pc.find(params[:id])
    end
end
