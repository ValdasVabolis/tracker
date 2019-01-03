class HomeController < ApplicationController
  def index
    @total = Measurement.sum(:reps)
    @measurement = Measurement.new
    measurement_count = Measurement.count
    if measurement_count > 0
      @average = (@total / Measurement.count.to_f).round(2)
    else
      @average = 0
    end
  end
end
