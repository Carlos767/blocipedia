class WikisController < ApplicationController
  def index
  	@wiki = Wiki.all
  	
  end

  def show
  	@wiki =Wiki.find(params[:id])
  end

  def new
  	@wiki = Wiki.new
  end

  def create
     @wiki = Wiki.new(params.require(:post).permit(:title, :body))
     raise # this will short-circuit the method
     if @wiki.save
       flash[:notice] = "Wiki was saved."
       redirect_to @wiki
     else
       flash[:error] = "There was an error saving the Wiki. Please try again."
       render :new
     end
   end

  def edit
  end
end
