class Api::V1::LandmarksController < ApplicationController

    def index
        landmarks = Landmark.all
        render json: landmarks, except: [:created_at, :updated_at]
    end

    def create
        landmark = Landmark.create(landmark_params)
    end

    private

    def landmark_params
        params.permit(:user, :name, :address, :img_url, :bio, :genre)
    end


end