module EntitiesHelper
  def group_id
    params.dig(:entity, :group_id) || params[:group_id]
  end
end
