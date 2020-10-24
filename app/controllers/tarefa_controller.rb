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

	def deleteTask
		#apaga task com o ID do banco de dados
		@task = Task.new
		@id = params.require(:deleteTask).permit(:id)["id"]

		if Task.exists?(id:@id)
			Task.find(@id).destroy
		else
			render 'tarefa/destroy'
		end
	end

	def destroy
		@task = Task.new
		render 'tarefa/destroy'
	end
	
	private
	def tarefa_params
		puts("Entering tarefa params...")
		params.require(:task).permit(:title, :deadline)
	end

end
