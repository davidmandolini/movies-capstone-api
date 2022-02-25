class GroupsController < ApplicationController
  before_action :authenticate_user

  def index
    groups = current_user.groups
    render json: groups
  end

  def show
    group = Group.find_by(:id => params[:id])
    render json: group
  end
end
