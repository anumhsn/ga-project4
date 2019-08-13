class RestaurantsController < ApplicationController
    def index
        @category = Category.find(params[:category_id])
        @restaurants = Restaurant.where(category_id: @category.id)
        render json: @restaurants
    end

    def show
        @category = Category.find(params[:category_id])
        @restaurant = Restaurant.find(params[:id])
        render json: @restaurant
    end

    def create
        @category = Category.find(params[:category_id])
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            render json: @restaurant, status: :created
        else
            render json: {errors: @restaurant.error}, status: :unprocessable_entity
        end
    end

    def update
        @category = Category.find(params[:category_id])
        @restaurant = Restaurant.find(params[:id])
        if @restaurant.update(restaurant_params)
            render json: @restaurant, status: :ok
        else
            render json: {errors: @restaurant.error}, status: :unprocessable_entity
        end
    end

    def destroy
        @category = Category.find(params[:category_id])
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        head 204
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :link)
    end
end