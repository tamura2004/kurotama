class Pcs::ActionsController < ApplicationController

  def new
    @actions = build_actions
  end

  def create
    form = Pcs::Action.new(params[:pcs_action])

    case form.name
    when "調べる"
      redirect_to pc

    when /へ行く/
      pc.update(map_id: form.map_id)
      redirect_to :new_pcs_move

    end
  end

  private

    def build_actions
      actions = []
      map = pc.map
      path = map.path
      paths = map.paths

      actions << Pcs::Action.new(name: "調べる")
      actions << Pcs::Action.new(name: "<span><span class='label label-primary'>#{path.name}</span>へ行く</span>", map_id: path.id) if path
      paths.each do |path|
        actions << Pcs::Action.new(name: "<span><span class='label label-primary'>#{path.name}</span>へ行く</span>", map_id: path.id)
      end
      actions
    end

end
