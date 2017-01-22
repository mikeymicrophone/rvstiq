class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end
  
  def create
    @job = Job.create job_params
    redirect_to :action => :index
  end
  
  protected
  
  def job_params
    params.require(:job).permit(:name)
  end
end
