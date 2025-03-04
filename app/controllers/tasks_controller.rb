class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    find_task
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
