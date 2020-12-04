class Api::V1::CoordsController < ApplicationController

    def index
        coords = Coord.all
        render json: coords, except: [:created_at, :updated_at]
    end

    def create
        coord = Coord.create!(coords_params)
        
        if coord.valid?
            render json: coord,  except: [:created_at, :updated_at]
        else
            render json: {errors: coord.errors} 
        end 
    end

    def show
        coord = Coord.find(params[:id])
        render json: coord, except: [:created_at, :updated_at]
    end 

    private

    def coords_params
        params.require(:coord).permit(:lat, :lng, :landmark_id)
    end


end