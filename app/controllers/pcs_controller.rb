class PcsController < ApplicationController
  before_action :set_pc, only: [:show]
  def index
    @pcs = Cards::Selects::Pc.build(Pc.all)
  end

  def show
    @cards = []
    @cards << Cards::Shows::Pc.new(@pc)
    @cards << Items::Weapon.new(name: @pc.weapon)
    @cards << Items::Shield.new(name: @pc.shield)
    @cards << Items::Armor.new(name: @pc.armor)
    @cards << Items::Ring.new(name: @pc.ring)
    @cards << Items::Spell.new(name: @pc.spell)
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
