class ClassifiedsController < ApplicationController
  def post
    @classifieds = Classified.all
  end

  def index
    @classified = Classified.find(params[:id])
  end

  def new
    @post = Classified.new
  end
end
