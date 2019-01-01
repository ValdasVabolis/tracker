class HomeController < ApplicationController
  def index
    @total = Measurement.sum(:reps)
    @measurement = Measurement.new
  end
end
