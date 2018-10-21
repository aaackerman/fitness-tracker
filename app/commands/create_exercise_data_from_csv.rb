class CreateExerciseDataFromCSV
  def initialize(csv)
    @csv = csv
  end

  def process_spreadsheet
    activities = []
    csv_rows = csv.to_a

    csv_rows.each do |row|
      exercise = Exercise.find_or_create_by(name: row[:exercise_name])
      routine = Routine.find_or_create_by(name: row[:workout_name])
      activity = Activity.find_or_create_by(
        exercise_id: exercise.id,
        routine_id: routine.id,
        created_at: row[:date],
        reps: row[:reps],
        weight_kgs: row[:weight_kg],
        weight_lbs: row[:weight_lb],
        notes: row[:notes]
      )

      activities << activity
    end

    add_activities_to_workout(activities)

    true
  rescue => e
    puts "ERROR #{e}"
    false
  end

  private

  def add_activities_to_workout(activities)
    grouped_activities = activities.group_by do |activity|
      activity.created_at.to_date
    end

    grouped_activities.each do |date, activities|
      routine_id = activities.first.routine_id
      workout = Workout.find_or_create_by(date: date, routine_id: routine_id)

      activities.each do |activity|
        activity.update(workout_id: workout.id)
      end
    end
  end

  attr_reader :csv
end
