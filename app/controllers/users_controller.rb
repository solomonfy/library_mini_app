class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]


    def about
        
    end

    def home
        
    end
    
    def index
        @users = User.all
    end

    def show  
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end
       
    
    def edit
    end
        

    def update
        @user.assign_attributes(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :edit
        end
    end


    def destroy
        @user.delete
        redirect_to users_path
    end


    private
    def find_user
        @user = User.find(params[:id])
    end


    def user_params
        params.require(:user).permit(:name, :address)
    end


end
