require_relative 'config/application'

Rails.application.load_tasks

require 'coveralls/rake/task'
Coveralls::RakeTask.new
task :test => [:spec, :cucumber, 'coveralls:push']

