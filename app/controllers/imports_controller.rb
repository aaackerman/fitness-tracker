require "csv"

class ImportsController < ApplicationController
  def new

  end

  def create
    csv_from_params = CSV.new(
      import_params.read,
      headers: true,
      header_converters: :symbol,
      converters: :all
    )

    CreateExerciseDataFromCSV.new(csv_from_params).process_spreadsheet
  end

  private

  def import_params
    params.require(:import)
  end
end
