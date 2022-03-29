class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
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
end
