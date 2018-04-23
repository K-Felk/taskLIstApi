class TasksController < ApplicationController

  before_action :set_project
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :sanitize_task_params

  
  # GET project/:project_id/tasks/
  def index
    json_response(@project.tasks)
  end

  # GET project/:project_id/tasks/:id

  def show
    json_response(@task)
  end

  # POST /users/:project_id/tasks
  def create
    task = @project.tasks.create!(task_params)
    json_response(task, :created)
  end

 # PUT /users/:project_id/tasks/:id
  def update
    @task.update(task_params)
    head :no_content
  end

# DELETE /users/:project_id/tasks/:id
  def destroy
    @task.destroy
    head :no_content
  end

  private

    def sanitize_task_params
      params[:urgency] = params[:urgency].to_i
      
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.permit(:name, :description, :dueDate, :notes, :urgency, :completed)
    end
end
