class ManagementController < ApplicationController
  def index
    @category = current_user.groups.find(params[:cat_id])
  end

  def new; end
end
