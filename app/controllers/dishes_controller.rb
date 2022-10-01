class DishesController < ApplicationController
    def index
        dishes = Dish.all
        render json: dishes, except: [:created_at, :updated_at], include: :ingredients
    end

    def show
        dish = Dish.find(params[:id])
        if dish
            render json: dish, include: :ingredients
        else
            render json: { error: "Dish not found" }, status: :not_found
        end
    end

end
