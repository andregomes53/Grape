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

	def delete
		
	end

	def destroy
		render 'deleteTarefa/destroy'
	end

	
	private
	def tarefa_params
		puts("Entering tarefa params...")
		params.require(:task).permit(:title, :deadline)
	end

end
