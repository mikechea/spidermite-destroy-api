class ScoresController < ApplicationController
  def index
    @scores = Score.order(score: :desc).limit(10)
    render json: @scores, status: :ok
  end

  def create
    puts params
    Score.create(name: params[:name], score: params[:score])
    @scores = Score.order(score: :desc).limit(10)
    render json: @scores, status: :ok
  end
end
