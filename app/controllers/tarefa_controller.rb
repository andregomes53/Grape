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
		# TODO Mapeamento de data -> deadline esta implementado manualmente, o certo agora é padronizar os nomes dos campos para inglês ou português
		mapa = params.require(:tarefa).permit(:titulo, :data)
		mapa[:deadline]= mapa[:data]
		return mapa.except(:data)
	end

end
