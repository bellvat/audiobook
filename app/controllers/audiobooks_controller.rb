class AudiobooksController < ApplicationController
  def listen
    @message = "We are going to listen to free audio!" 
  end

  def new
  end

  def index
  end

  def create
    @book = Audiobook.new(book_params)
    @book.save
    #pass the instance to the path, and it will know the id of that instance
    redirect_to audiobook_path(@book)
  end

  def show
    @book = Audiobook.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title)
  end
end
