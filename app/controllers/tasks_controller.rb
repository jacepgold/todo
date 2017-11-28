class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy 
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end 
  private
  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
