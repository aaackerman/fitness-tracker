class RoutinesController < ApplicationController
  def index
    @routines = Routine.all.order(name: :asc)
  end

  def show
    @routine = Routine.find(params[:id])

    @activities = Activity
      .includes(:exercise)
      .where(routine_id: @routine.id)
      .order(created_at: :asc)

    @grouped_activities = @activities.reverse.group_by do |activity|
      activity.created_at.to_date
    end
  end
end
