class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @groups = Group.all
    
  end

  def new
    @groups = Group.new
    @user = current_user

  end

  def create
    @groups = Group.new(group_params)
    @groups.user = current_user
    if @groups.save
      redirect_to user_groups_path
    else
      render 'new'
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, :image)
  end
end
