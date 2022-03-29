class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(userId: params[:id])
        render json: @user
    end

    def create
        @user = User.create(
            userId: params[:userId],
            name: params[:name],
            accountBalance: params[:accountBalance]
        )
        render json: @user
    end

    def update
        @user = User.find_by(userId: params[:id])
        @user.update(
            userId: params[:userId],
            name: params[:name],
            accountBalance: params[:accountBalance]
        )
        render json: @user
    end

    def destroy
        @users = User.all
        @user = User.find_by(userId: params[:id])
        @user.destroy
        
        render json: @users
    end
end
