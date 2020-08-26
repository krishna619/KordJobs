class JobsController < ApplicationController

  def index
    @cities = CITIES
    @jobs = JOB
  end


end
