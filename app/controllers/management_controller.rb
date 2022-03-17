class ManagementController < ApplicationController
  def index
    @category = current_user.groups.find(params[:cat_id])
    @purchase = []
    @group_managment = GroupManagment.where(group_id: @category.id)
    @group_managment.each do |manage|
      @purchase.push( { name: Managment.find(manage.managment_id).name,
                        amount: Managment.find(manage.managment_id).amount })                
    end
  end

  def new
    @management = Managment.new
    @category = current_user.groups.find(params[:cat_id])
    @categories = current_user.groups
  end

  def create
    add_to_other_cathegories = management_params[:categories]
    @management = Managment.new(name: management_params[:name], amount: management_params[:amount], author_id: current_user.id)
    if @management.save
      GroupManagment.create(group_id: params[:cat_id], managment_id: @management.id)
      unless add_to_other_cathegories == nil
        add_to_other_cathegories.each do |value|
          GroupManagment.create(group_id: value.to_i, managment_id: @management.id)
        end
      end
      flash[:notice] = 'New purchase added successfully =D'
      redirect_to "/categories/#{params[:cat_id]}/management"
    else
      flash[:alert] = @management.errors.full_messages
      redirect_to "/categories/#{params[:cat_id]}/management/new"
    end
  end

  private

  def management_params
    params.require(:data).permit(:name, :amount, categories:[])
  end
end
