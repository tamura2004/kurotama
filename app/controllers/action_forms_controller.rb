class ActionFormsController < ApplicationController

  def new
    @actions = build_actions
  end

  def create
    form = ActionForm.new(params[:action_form])

    case form.name
    when "調べる"
      redirect_to pc

    when /へ行く/
      pc.update(map_id: form.map_id)
      redirect_to pc

    end
  end

  private

    def build_actions
      actions = []
      map = pc.map
      path = map.path
      paths = map.paths

      actions << ActionForm.new(name: "調べる")
      actions << ActionForm.new(name: path.name + "へ行く", map_id: path.id) if path
      paths.each do |path|
        actions << ActionForm.new(name: path.name + "へ行く", map_id: path.id)
      end
      actions
    end

end
