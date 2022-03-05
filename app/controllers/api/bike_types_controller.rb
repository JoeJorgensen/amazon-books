class Api::BikeTypesController < ApplicationController
before_action :set_bike, except:[:bike_types_all]
before_action :set_bike_type, only: [:show, :update, :destroy]
def index
render json: @bike.bike_types.all
end

# def all_bikes_all_types 
#      @bike_type = @bike.bike_types.save
#      render json: @bike_type
#     # Bike.all
#     # if()
#     # render json: (bike_type.all)
# # render json: 
# end

def bike_types_all
render json: BikeType.all
end



def show
    render json: @bike_type
end


def create 
    @bike_type = @bike.bike_types.new(bike_types_params)
    if (@bike_type.save)
        render json: @bike_type
    else
        render json: {errors: @bike_type.errors.full_messages}, status:422
    end

end

def update
    if (@bike_type.update(bike_types_params))
        render json: @bike_type
    else
        render json: {errors: @bike_type.errors.full_messages}, status:422
    end
end

def destroy
    render json: @bike_type.destroy

end

private

def bike_types_params
    params.require(:bike_type).permit(:catagory, :price)
end

def set_bike
    @bike = Bike.find(params[:bike_id])
end

def set_bike_type
    @bike_type = @bike.bike_types.find(params[:id])
end

end
