class TarefaController < ApplicationController
	def new
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
		logger.debug("Debug de parâmetros")
		logger.info(params)
		logger.info params.require(:tarefa).permit(:titulo)
		params.require(:tarefa).permit(:titulo)
	end

end
