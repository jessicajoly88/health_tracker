class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  		@foods = Food.all
  end

  def edit
  	@user = User.find(params[:id])
  	@foods = Food.all
  end

  def update
  	@user = User.find(params[:id])
    food_ids = params[:foods]
    binding.pry
    if food_ids != nil
      if food_ids.length > 0
        food_ids.each do |food_id|
            food = Food.find(food_id)
            @user.foods.push(food)
        end
      end
      redirect_to user_path(current_user)
  	else
      render :edit
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:email, :password, :name)
  # end

end
