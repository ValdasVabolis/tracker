class MeasurementsController < ApplicationController
  def index
    @grouped_measurements = Measurement.all.group_by { |m| m.created_at.day }
  end

  def create
    @measurement = Measurement.new(params.require(:measurement).permit(:reps))
    if @measurement.save
      puts 'Success!'
      redirect_to root_path
    else
      puts 'Failure!'
    end
  end
end
