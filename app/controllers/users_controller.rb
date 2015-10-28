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
  	@post = Post.find(params[:id])
    food_ids = params[:user][:food]
  	if food_ids.length > 0
        food_ids.each do |food_id|
            food = Tag.find(food_id)
            @user.foods.push(tag)
        end 
      redirect_to user_path(current_user)
  	else
      render :edit
    end
  end

   

end