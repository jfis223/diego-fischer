class SlidesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @slides = Slide.all.sort_by(&:updated_at).reverse
  end

  def show
    @slide = Slide.friendly.find(params[:id])
  end

  def edit
    @slide = Slide.friendly.find(params[:id])
  end

  def update
    @slide = Slide.friendly.find(params[:id])
    @slide.update(slide_params)
    redirect_to root_path
  end

  private

  def slide_params
    params.require(:slide).permit(:title, :subtitle, :link, :photo)
  end

end
