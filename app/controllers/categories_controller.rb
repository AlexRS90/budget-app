class CategoriesController < ApplicationController
  def index
    @empty_categories = current_user.groups.all.empty?
    if @empty_categories == false
      @categories = current_user.groups.all
    end
  end

  def new; end
end
