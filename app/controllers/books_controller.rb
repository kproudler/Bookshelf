class BooksController < ApplicationController
    
    def index
        @books = Book.all
        render :index
    end

    def show
        @book = Book.find(params[:id])
        render :show
    end

    def new
        @book = Book.new
        render :new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_url(@book)
        else
            flash.now[:errors] = @book.errors.full_messages
            render :new
        end
    end

    def edit
        @book = Book.find(params[:id])
        render :edit
    end

    def update
        @book = Book.find(params[:id])
        if @book.update_attributes(book_params)
            redirect_to book_url(@book)
        else
            flash.now[:errors] = @book.errors.full_messages
            render :edit
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :genre, :series, :year)
    end


end
