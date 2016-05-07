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
      redirect_to pc

    when "新規作成"
      Pc.find(0).update(map_id:0)
      redirect_to pc

    end
  end
end
