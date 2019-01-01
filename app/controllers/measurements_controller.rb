class MeasurementsController < ApplicationController
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
