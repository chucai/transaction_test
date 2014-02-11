require 'rspec/core/rake_task'
require File.expand_path(File.join("..", "models", "user"), __FILE__)
require File.expand_path(File.join("..", "models", "profile"), __FILE__)

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :db do
  desc "clear database"
  task :clear do
    puts "clear database records"
    User.destroy_all
    Profile.destroy_all
  end
end


