class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render :new
    end
  end
#@author = Author.create!(author_params)
  private

  def author_params
    params.permit(:email, :name)
  end
end
