class MenusController < ApplicationController

  def top
  end

  def new
    @menus = [ Menu.new(name: "新規作成") ]
    @menus << Menu.new(name: "続きから") if Pc.exists?
  end

  def create
    case params[:menu][:name]

    when "続きから"
      redirect_to :pcs

    when "新規作成"
      redirect_to :new_pc

    end
  end
end
