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
			post 'create', params: {user: {name: "Maria", email: "maria@exemplo.com", password: "Maria123###"}}
			expect(response).to be_successful
		end
	end

	describe 'showing user' do
		fixtures :users, :tasks
		it 'calls the method that shows the user page' do
			get 'show', params: {id: 1}
			expect(response).to be_successful
		end
		it "should show the user's tasks" do
			user = users(:joao)
			math_task = tasks(:math_task)
			expect(math_task.user_id).to equal(user.id)
		end
		it 'list all users' do
			get 'index'
			expect(response).to be_successful
		end
	end
end