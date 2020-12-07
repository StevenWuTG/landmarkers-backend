class Api::V1::LandmarksController < ApplicationController

    def index
        landmarks = Landmark.all
        render json: landmarks, except: [:created_at, :updated_at]
    end

    def create
        landmark = Landmark.create!(landmark_params)
        
        if landmark.valid?
            render json: landmark,  except: [:created_at, :updated_at]
        else
            render json: {errors: landmark.errors} 
        end 
    end

    def show
        landmark = Landmark.find(params[:id])
        render json: landmark, except: [:created_at, :updated_at]
    end 


    def update
        landmark = Landmark.find(params[:id])
        if (landmark.update!(landmark_params))
            render json: landmark
        else
            render json: {errors: landmark.errors} 
        end 
    end 

    def destroy
        allLandmark = Landmark.all
        landmark = Landmark.find(params[:id])
        landmark.destroy
        render json: allLandmark
    end 

    private

    def landmark_params
        params.require(:landmark).permit(:user_id, :name, :address, :img_url, :bio, :genre, :coord_id)
    end


end