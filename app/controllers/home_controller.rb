class HomeController < ApplicationController
  #before_filter :authenticate_cat!

  def index
    if cat_signed_in? 
      redirect_to cat_path(current_cat)
    end
  end
end
