class HomeController < ApplicationController
  def index
    @total = Measurement.sum(:reps)
    @measurement = Measurement.new
    measurement_count = Measurement.count
    @average_per_day = (@total / Measurement.all.group_by { |m| m.created_at.day }.size.to_f).round(2) 
    @average_per_set = 0
    if measurement_count > 0
      @average_per_set = (@total / measurement_count.to_f).round(2)
    end
  end
end
