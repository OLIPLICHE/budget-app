class GroupsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @user = current_user
    @groups = Group.order(:created_at).where(user: @user)
    @total = 0
    @groups.each do |group|
      @total += group.entities.sum(:amount)
    end
  end

  def show
    @user = current_user
    @group = Group.find(params[:id])
    entities = @group.entities.order(created_at: :desc)
    @total = @group.entities.sum(:amount)
  end

end
