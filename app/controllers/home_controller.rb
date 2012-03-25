class HomeController < ApplicationController
  #before_filter :authenticate_cat!

  def index
    if cat_signed_in? 
      cat= Cat.find(params[:id])
      redirect_to :controller => 'cats', :action => 'show'
    end

  end
end
