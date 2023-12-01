class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :biografia, :privacy_policy, :defensa_paysandu_el_precio_de_una_traicion]

  def home
    render "/slides/index"
    @slides = Slide.all
  end

  def biografia
  end

  def privacy_policy
  end

  def defensa_paysandu_el_precio_de_una_traicion
  end
end
