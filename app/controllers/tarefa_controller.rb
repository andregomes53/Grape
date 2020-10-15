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
		
		@id = params.require(:deleteTask).permit(:id)
		#Task.find_by(id: params[:id], sender_Id: 1).destroy
		#Task.find(params[:id]).destroy
	end

	def destroy
		render 'tarefa/destroy'
	end

	
	private
	def tarefa_params
		puts("Entering tarefa params...")
		params.require(:task).permit(:title, :deadline)
	end

end
