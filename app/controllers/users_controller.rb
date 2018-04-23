class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  
  # GET projects/:project_id/tasks/:task_id/users OR
  # GET users
  def index   
    @users = User.all
    json_response(@users)
  end

  
  # GET projects/:project_id/tasks/:task_id/users/:id
  def show
    json_response(@user)
  end

  # POST /users/:project_id/tasks
  def create
    user = User.create!(user_params)
    json_response(user, :created)
  end

 # PUT /users/:project_id/tasks/:id
  def update
    @user.update(user_params)
    json_response(user, :updated)
  end

# DELETE /users/:project_id/tasks/:id
  def destroy
    @user.destroy
    head :no_content
  end

  

  private
  
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:fname, :lname, :email, :position, :task_id)
    end
end
