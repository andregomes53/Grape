class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to action: 'show', id: @task.id
		else
			render 'new'
		end
	end

	def show
		@task = Task.find(params[:id])	
	end

	def delete
		
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to action: 'index'
	end
	
	private
	def task_params
		params.require(:task).permit(:title, :deadline)
	end

end
