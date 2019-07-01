class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_params)
    if task.valid?
      if task.save
        flash[:notice] = "Task good enough!"
        redirect_to tasks_path
      else
        @task = task
        render :new
      end
    else
      flash[:notice] = "Task not filled in properly"
      @task = task
      render :new
    end
  end


  private

  def task_params
    params.require(:task).permit(:name, :category, :delivery_at, :description, :kind_id)
  end
end
