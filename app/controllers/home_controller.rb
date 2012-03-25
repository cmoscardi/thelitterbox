class HomeController < ApplicationController
  #before_filter :authenticate_cat!

  def index
    if cat_signed_in? 
      redirect_to "/feed"
      #cat_path(current_cat)
    end
  end

  def feed
    @cats = Cat.all
  end

  def contact
  end

  def about
  end

end
