class Items::LevelUpsController < PcsBaseController

  def destroy
    if @level_up = Items::LevelUp.find_by(id:params[:id])

      if pc.soul < @level_up.price
        Log.danger("%sは%sのソウルを持っていない" % [pc.name, @name])

      else
        pc.soul -= @level_up.price
        case @level_up.name
        when "筋力up"
          pc.str += 1
        when "敏捷up"
          pc.dex += 1
        when "体力up"
          pc.con += 1
        when "理力up"
          pc.int += 1
        when "信仰up"
          pc.wis += 1
        when "人間性up"
          pc.cha += 1
        end
        pc.save
        Log.success("%sは%s" % [pc.name, @name, @level_up.price])

      end
    end

    redirect_to :back
  end

end
