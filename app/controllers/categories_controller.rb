class CategoriesController < ApplicationController
  def index
    @empty_categories = current_user.groups.all.empty?
    @categories = current_user.groups.all if @empty_categories == false
  end

  def new; end
end
