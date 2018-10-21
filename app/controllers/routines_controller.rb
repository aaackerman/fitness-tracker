class RoutinesController < ApplicationController
  def index
    @routines = Routine.all.order(name: :asc)
    @workouts = Workout.last(4)
  end

  def show
    @routine = Routine.find(params[:id])

    @workouts = Workout
      .includes(activities: :exercise)
      .where(routine_id: @routine.id)
      .order(created_at: :asc)
  end
end
