class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def create
        user = User.create(user_params)
        render json: user,  except: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    private

    def user_params
        params.permit(:username, :hometown, :img_url, :bio)
    end


end