require 'rails_helper'

describe 'SessionsController', :type => :controller do
	before(:context) do
		@controller = SessionsController.new
	end

  describe 'creating session' do
    it 'redirects to the sign in page' do
      get 'new'
      expect(response).to render_template(:new)
    end
    it 'calls the method that creates a session' do
      post 'create', params: {session: {email: "joao_neves@email.com", password: "Jo45Ness89"}}
      expect(response).to be_successful
    end
  end

end
