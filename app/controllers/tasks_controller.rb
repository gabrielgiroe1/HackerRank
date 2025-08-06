class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_task, only: %i[edit show update destroy]

  def index
    # raise
    @tasks = current_user.tasks
  end

  def new
    @task = current_user.tasks.build
  end

  def show; end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Task created successfully."
    else
      flash.now[:alert] = "Error creating task: " + @task.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit; end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task updated successfully."
    else
      flash.now[:alert] = "Error updating task: " + @task.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Task deleted successfully."
  end

  private

  def task_params
    params.require(:task).permit(:title, :status, :user_id)
  end

  def find_task
    @task = current_user.tasks.find(params[:id])
  end
end
