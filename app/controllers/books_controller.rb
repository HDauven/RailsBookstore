class BooksController < ApplicationController


  def new
    @page_title = 'Add New Book'
    @author = Author.new
    @book = Book.new
    @category = Category.new
    @publisher = Publisher.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private 
    def book_params
      params.require(:book).permit(
        :title, :author_id, :category_id, :publisher_id, 
        :isbn, :price, :buy, :format, :excerpt, :pages, :year)
    end 
end
