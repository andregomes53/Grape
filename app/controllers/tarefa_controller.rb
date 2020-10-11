class TarefaController < ApplicationController
	def new
		@task = Task.new
	end
	
	def create
		@task = Task.new(tarefa_params)
		if @task.save
			redirect_to action: 'show', id: @task.id
		else
			render 'new'
		end
	end

	def show
		@task = Task.find(params[:id])
	end

	private
	def tarefa_params
		params.require(:task).permit(:title, :deadline)
	end

end
