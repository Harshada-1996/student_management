class TasksController < ApplicationController
    def show
       @task=Task.find(params[:id])
    end    
    def new
        @task=Task.new
    end    
    def create
        @task = Task.new(task_params)
        if @task.save
            flash[:notice] = "Task was successfully created"
            redirect_to task_path(@task)
        else 
            render 'new'
        end
    end
    def task_params
        params.require(:task).permit(:title, :description)
    end
end    