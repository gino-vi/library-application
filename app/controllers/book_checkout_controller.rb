class BookCheckoutController < ApplicationController

    def show
        @book = Book.find(params[:book_checkout_id])
    end

    def submit
        @book = Book.find(params[:book_checkout_id])
        if book_update = Book.where(id: @book).update_all(:status => 2, :checked_out_by => current_user.first_name + " " + current_user.last_name, :updated_at => Time.now.utc)
            redirect_to book_checkout_show_path
            flash[:notice] = "Book successfully checked out."
        else
            flash[:alert] = "Something went wrong."
            render 'show'
        end
    end

    private
    def update_book_params
        params.require(:book).permit(:checked_out_by)
    end

end
