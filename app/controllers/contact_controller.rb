class ContactController < ApplicationController
  def new
    @message = ""
  end

  def create
    @message = params[:message]
  end
end
