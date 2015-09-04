class ClassifiedsController < ApplicationController
  def post
    #@classifieds = Classified.all
  end

  def index
    @classifieds = Classified.all
  end

  def new
    @classified = Classified.new
  end

  def show
    @classified = Classified.find(params[:id])
  end 

  def create
    @classified = Classified.new(classified_params)
  
    if @classified.save
      redirect_to classifieds_path
    else
      render :new
    end
  end

   private

  def classified_params
    params.require(:classified).permit(:title, :author, :body)
  end

end
