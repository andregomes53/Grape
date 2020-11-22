require_relative 'config/application'

Rails.application.load_tasks

if ENV['RAILS_ENV'] != 'production'
	require 'coveralls/rake/task'
	Coveralls::RakeTask.new
	task :test => [:spec, :cucumber, 'coveralls:push']
end

