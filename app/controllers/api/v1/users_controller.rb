class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user,  except: [:created_at, :updated_at]
        else
            render json: {errors: user.errors} 
        end 
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def update
        user = User.find(params[:id])
        if (user.update!(user_params))
            render json: user
        else
            render json: {errors: user.errors} 
        end 
    end 

    def destroy
        allUser = User.all
        user = User.find(params[:id])
        user.destroy
        render json: allUser
    end

    private

    def user_params
        params.permit(:username, :hometown, :img_url, :bio)
    end


end