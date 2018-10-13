class CreateExerciseDataFromCSV
  def initialize(csv)
    @csv = csv
  end

  def process_spreadsheet
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
    end
    true
  rescue
    false
  end

  private

  attr_reader :csv
end
