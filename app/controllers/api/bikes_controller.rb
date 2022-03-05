class Api::BikesController < ApplicationController
    before_action :set_bike, only: [:update, :show, :destroy]

    def index
        render json: Bike.all
    end
    

    def show
        render json: @bike
    end

    def create 
        @bike = Bike.new(bikes_params)
        if(@bike.save)
            render json: @bike
        else
            render json: {errors: @bike.errors.full_messages}, status: 422
        end
    end

    def update 
         if (@bike.update(bikes_params))
            render json: @bike
          else 
            render json: {errors: @bike.errors.full_messages}, status:422
        end
    end


    def destroy 
        render json: @bike.destroy
    end

    private

    def set_bike
        @bike = Bike.find(params[:id])
    end

    def bikes_params
        params.require(:bike).permit(:make, :color)
    end


end
