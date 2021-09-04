class SlidesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @slides = Slide.all
  end

  def show
    @slide = Slide.find(params[:id])
  end

  def edit
    @slide = Slide.find(params[:id])
  end

  def update
    @slide = Slide.find(params[:id])
    @slide.update(slide_params)
    redirect_to slide_path(@slide)
  end

  private

  def slide_params
    params.require(:slide).permit(:title, :subtitle, :photo)
  end

end
