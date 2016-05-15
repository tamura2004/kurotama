class PcsBaseController < ApplicationController
  before_action :check_pc
  before_action :check_log

  private

    def check_log
      if id = pc.log_id
        @logs = Log.where("id > ?", id)
      else
        @logs = Log.last(3)
      end

      pc.update(log_id: @logs.last.id) if @logs.present?
    end


    def check_pc
      unless pc
        if session.delete(:gameover)
          redirect_to :menus_gameover
        else
          redirect_to :menus_top
        end
      end
    end

    def pc
      if id = session[:pc_id]
        if @pc = Pc.find_by(id: id)
          @pc
        else
          session[:gameover] = true
          session[:pc_id] = nil
        end
      end
    end

    helper_method :pc

end
