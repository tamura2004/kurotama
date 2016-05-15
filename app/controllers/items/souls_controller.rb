class Items::SoulsController < PcsBaseController
  def destroy
    @soul = Items::Soul.find(params[:id])
    pc.update(soul: pc.soul + @soul.soul)

    message = "%sは%sから%sソウルを得た" % [pc.name, @soul.name, @soul.soul]
    Log.info(message)

    @soul.delete
    redirect_to :back
  end
end
