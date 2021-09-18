class SlidesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @slides = Slide.all
  end

  def show
    @slides = Slide.all
    @slide = Slide.find(params[:id])
  end

  def edit
    @slides = Slide.all
    @slide = Slide.find(params[:id])
  end

  def update
    @slide = Slide.find(params[:id])
    @slide.update(slide_params)
    redirect_to slides_path
  end

  private

  def slide_params
    params.require(:slide).permit(:title, :subtitle, :link, :photo)
  end

end

# El edit debería tener todas las slides para poder tener una única página donde editar.
# El view del edit debería iterar por slides.all
# El update controller debería iterar por slides.all y hacer el update y redireccionar al home.
