class CatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :update]

  def index
    @cats = Cat.all
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.rate += 1
    if @cat.save
      redirect_to root_path
    end
  end
end
