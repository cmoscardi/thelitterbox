class CatsController < ApplicationController
  before_filter :authenticate_cat!

  def show
    @cat = Cat.find(params[:id])
  end
end
