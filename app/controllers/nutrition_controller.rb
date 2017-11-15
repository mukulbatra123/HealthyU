class NutritionController < ApplicationController
    def nutrition_params
        params.permit(:height,:weight, :age)
        params[:height].nil ? 0 : params[:height].to_i
        params[:weight].nil ? 0 : params[:weight].to_i
        params[:age].nil ? 0 : params[:age].to_i
    end
    def index
    end
    def show
        @Calc = params[:height] + params[:weight] + params[:age]
    end
end