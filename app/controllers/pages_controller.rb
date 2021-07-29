class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :biografia]

  def home
  end

  def biografia
  end
end
