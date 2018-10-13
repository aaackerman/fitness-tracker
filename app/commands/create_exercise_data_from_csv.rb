class CreateExerciseDataFromCSV
  def initialize(csv)
    @csv = csv
  end

  def process_spreadsheet
    csv_rows = csv.to_a
    csv_rows.each do |row|
      exercise = Exercise.find_or_create_by(name: row[:exercise_name])
      binding.pry
    end
  end

  private

  attr_reader :csv
end
