class FoodsController < ApplicationController

  def create
    @entry = Entry.find(params[:entry_id])
    @food = @entry.foods.create(food_params)
    redirect_to entry_path(@entry)
  end

  private
    def food_params
      params.require(:food).permit(:name, :calorie_count)
    end
end
