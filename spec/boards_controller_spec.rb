require 'rails_helper'

describe 'BoardsController', :type => :controller do
  before(:context) do
    @controller = BoardsController.new
  end

  describe 'boards index' do
    it 'should render the index.html.erb' do
      get 'index'
      expect(response).to render_template(:index)
    end
  end

  describe 'boards'
end


