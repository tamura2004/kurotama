class MenusController < ApplicationController

  def new
    @menus = [
      Menu.new(name: "続きから"),
      Menu.new(name: "新規作成")
      ]
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
