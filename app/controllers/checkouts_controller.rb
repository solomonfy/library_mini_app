class CheckoutsController < ApplicationController

    before_action :find_checkout, only: [:update, :destroy]

    # def index
    #     @checkouts = Checkout.all
    # end

    # def show
    # end

    def new
        @checkout = Checkout.new
    end

    def create
        @checkout = Checkout.new(checkout_params)
        if @checkout.valid?
            @checkout.save
            redirect_to user_path(@checkout.user)
        else
            render :new
        end
    end

    private
    def find_checkout
        @checkout = Checkout.find(params[:id])
    end


    def checkout_params
        params.require(:checkout).permit(:user_id, :book_id)
    end
end
