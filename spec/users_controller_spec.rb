require 'rails_helper'

describe 'UsersController', :type => :controller do
	before(:context) do
		@controller = UsersController.new
	end

	describe 'showing user' do
		it 'calls the method that shows the user page' do
			get 'show', params: {id: 1}
			expect(response).to be_successful
		end
		it 'should render the page' do
		
		end
	end
end