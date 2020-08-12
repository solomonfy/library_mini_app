class BooksController < ApplicationController

   
    before_action :find_book, only: [:show, :edit, :update, :destroy]

    def index
        @books = Book.all
    end

    def show  
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.valid?
            @book.save
            redirect_to book_path(@book)
        else
            render :new
        end
    end
       
    
    def edit
    end
        

    def update
        @book.assign_attributes(book_params)
        if @book.valid?
            @book.save
            redirect_to book_path(@book)
        else
            render :edit
        end
    end


    def destroy
        @book.delete
        redirect_to books_path
    end


    private
    def find_book
        @book = Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:title, :author)
    end


end
