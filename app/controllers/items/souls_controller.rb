class Items::SoulsController < PcsBaseController
  def destroy
    if @soul = Items::Soul.find_by(id:params[:id])
      pc.update(soul: pc.soul + @soul.soul)

      message = "%sは%sから%sソウルを得た" % [pc.name, @soul.name, @soul.soul]
      Log.success(message)

      @soul.delete

    else
      message = "ソウルは誰かが持ち去った"
      Log.warning(message)

    end
    redirect_to :back
  end
end
