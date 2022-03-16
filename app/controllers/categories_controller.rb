class CategoriesController < ApplicationController
  def index
    @empty_categories = current_user.groups.all.empty?
    @categories = current_user.groups.all if @empty_categories == false
  end

  def new
    @category = Group.new
    @icons = [['Books', 'books.png'], ['Car', 'car.png'],
              ['Fast Food', 'fast_food.png'], ['Vacations', 'fligth.png'],
              ['Gas', 'gasoline.png'], ['Technology', 'laptop.png'],
              ['Restaurant', 'restaurant.png'], ['Running', 'running.png'],
              ['Education', 'school.png'], ['Grocery', 'shopping_cart.png'],
              ['E-games', 'video_games.png'], ['Other', 'happy.png']]
  end

  def create
    @group = Group.new(user_id: current_user.id, name: category_params[:name], icon: category_params[:icon])
    if @group.save
      flash[:notice] = 'New category created successfully! =D'
      redirect_to '/categories'
    else
      flash[:alert] = @group.errors.full_messages
      redirect_to '/categories/new'
    end
  end

  private

  def category_params
    params.require(:data).permit(:name, :icon)
  end
end
