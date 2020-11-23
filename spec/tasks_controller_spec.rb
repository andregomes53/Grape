require 'rails_helper'

describe 'TasksController', :type => :controller do
	before(:context) do
		@controller = TasksController.new
		
	end
	
	describe 'alterando task' do
		it 'Redireciona para a página de alterar tarefa' do
			get 'edit', params: {id: 1}
			expect(response).to render_template(:edit)
		end
	end

	describe 'showing tasks' do
		fixtures :tasks
		it 'calls the method that shows the task page' do
			get 'show', params: {id: 1}
			expect(response).to be_successful
		end
	end

end