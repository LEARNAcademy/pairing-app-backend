class PairsController < ApplicationController
  def index
    pairs = Pair.all
    render json: pairs.as_json(include: [:student_one_id])
  end

  def create
    pair = Pair.create(pair_params)
    if pair.valid?
      render json: pair 
    else
      render json: pair.errors, status: 422
    end
  end

  def update
    pair = Pair.find(params[:id])
    pair.update(pair_params)
    if pair.valid?
      render json: pair 
    else
      render json: pair.errors, status: 422
    end
  end

  def destroy
    pair = Pair.find(params[:id])
    pair.destroy 
    render json:pair
  end

  private
  def pair_params
    params.require(:pair).permit(:activity_id, :student_one_id, :student_two_id)
  end
end
