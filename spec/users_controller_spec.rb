require 'rails_helper'

describe 'UsersController', :type => :controller do
	before(:context) do
		@controller = UsersController.new
	end
	
	describe 'creating user' do
		it 'redirects to the sign up page' do
			get 'new'
			expect(response).to render_template(:new)
		end
		it 'calls the method that creates a user' do
			post 'create', params: {user: {name: "Maria"}}
			expect(response).to be_successful
		end
	end

	describe 'showing user' do
		it 'calls the method that shows the user page' do
			get 'show', params: {id: 1}
			expect(response).to be_successful
		end
		it 'should render the page' do
			expect(response.body).to include("fazer tarefa de matematica")
		end
	end
end