class EntitiesController < ApplicationController

  def new
    @entity = Entity.new
     @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.find(group_id)
    @entity = @group.add_entity(entity_params)

    redirect_to @group
  rescue ActiveRecord::RecordInvalid
    render :new, group_id: group_id
  end

  private

  def group_id
    params.dig(:entity, :group_id) || params[:group_id]
  end

  def entity_params
    params.require(:entity).permit(:name, :amount).merge(user: current_user)
  end
end
