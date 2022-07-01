class BooksController < ApplicationController
  before_filter :set_book, only: [:show, :edit, :update, :destroy]

  respond_to :html
  helper_method :sort_column, :sort_direction

  def index
    @books = Book.order(sort_column + " " + sort_direction)
    respond_with(@books)
  end

  def show
    respond_with(@book)
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    respond_with(@book)
  end

  def update
    @book.update_attributes(params[:book])
    respond_with(@book)
  end

  def destroy
    @book.destroy
    respond_with(@book)
  end

  def available
    @books = Book.all
    respond_with(@books)
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def sort_column
      Book.column_names.include?(params[:sort]) ? params[:sort] : "book_name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    
    
end
