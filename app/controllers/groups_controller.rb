class GroupsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @groups = Group.where(params[:id]).order(created_at: 'DESC')
  end

  def show
    @group = Group.find(params[:id])
    @total = @group.entities.sum(:amount)
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new group_params
    @group.user = current_user

    if @group.save
      redirect_to user_groups_path(current_user), notice: 'Category added successfully'
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
