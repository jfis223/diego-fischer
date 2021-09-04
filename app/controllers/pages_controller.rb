class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :biografia, :privacy_policy]

  def home
    render "/slides/index"
  end

  def biografia
  end

  def privacy_policy
  end
end
