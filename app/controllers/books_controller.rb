class BooksController < ApplicationController


  def new
    @page_title = 'Add New Book'
    @author = Author.new
    @book = Book.new
    @category = Category.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    
    if @book.save
      flash[:notice] = "Book created"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  private 
    def book_params
      params.require(:book).permit(
        :title, :author_id, :category_id, :publisher_id, :coverpath, 
        :isbn, :price, :buy, :format, :excerpt, :pages, :year)
    end 
end
