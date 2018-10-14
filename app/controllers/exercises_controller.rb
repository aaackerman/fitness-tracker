class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all.order(name: :asc)
  end

  def show
    @exercise = Exercise.find(params[:id])

    @activities = Activity
      .where(exercise_id: @exercise.id)
      .order(created_at: :asc)

    @grouped_activities = @activities.reverse.group_by do |activity|
      activity.created_at.to_date
    end
  end
end
