class CohortsController < ApplicationController
  def index
    cohorts = Cohort.all
    render json: cohorts
  end

  def create
    cohort = Cohort.create(cohort_params)
    if cohort.valid?
      render json: cohort 
    else
      render json: cohort.errors, status: 422
    end
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)
    if cohort.valid?
      render json: cohort 
    else
      render json: cohort.errors, status: 422
    end
  end

  def destroy
    cohort = Cohort.find(params[:id])
    cohort.destroy 
    render json:cohort
  end

  private
  def cohort_params
    params.require(:cohort).permit(:name, :year)
  end
end
