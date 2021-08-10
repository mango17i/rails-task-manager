class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
        @tasks = Task.all
    end

    def show
    end

    def new
        @task = Task.new
      end
    
      # post 'tasks'
      def create
        @task = Task.new(task_params)
        @task.save
        # redirect_to task_path(task.id)
        redirect_to tasks_path
      end
    
      # get 'tasks/:id/edit'
      def edit
      end
    
      # patch 'task/:id'
      def update
        @task.update(task_params)
        redirect_to task_path(@task)
      end

      def destroy
        @task.destroy
        redirect_to tasks_path
      end

      private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end