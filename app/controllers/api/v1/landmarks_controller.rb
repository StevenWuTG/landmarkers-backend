class Api::V1::LandmarksController < ApplicationController

    def index
        landmarks = Landmark.all
        render json: landmarks, except: [:created_at, :updated_at]
    end

    def create
        landmark = Landmark.create!(landmark_params)
        render json: landmark, except: [:created_at, :updated_at] 
    end

    def show
        landmark = Landmark.find(params[:id])
        render json: landmark, except: [:created_at, :updated_at]
    end 

    private

    def landmark_params
        params.require(:landmark).permit(:user_id, :name, :address, :img_url, :bio, :genre)
    end


end