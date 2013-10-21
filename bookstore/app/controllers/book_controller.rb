class BookController < ApplicationController
  
  def index
  end
  
  def list
  @books = Book.all
  end
  
  def addbook
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def deletebook
    @book = Book.find(params[:id])
    @book.destroy 
    redirect_to :action => 'list'
 end
	
  def updatebook
  @book= Book.find(params[:id]) 
  if @book.update(params[:book].permit(:name,:description,:price,:publisher,:publisherdate))
    redirect_to :action => 'show', :id => @book.id 
  else
    render 'edit'
  end
 end
  
  def savebook
  @book = Book.new(post_params)
 
  @book.save
  redirect_to :action => 'show', :id => @book.id 
 end
 
private
  def post_params
    params.require(:book).permit(:name,:description,:price,:publisher,:publisherdate)
  end
end
