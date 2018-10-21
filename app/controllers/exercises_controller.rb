class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all.order(name: :asc)
  end

  def show
    @exercise = Exercise.find(params[:id])

    @workouts = Workout
      .includes(:activities)
      .where(activities: { exercise_id: @exercise.id })
  end
end
