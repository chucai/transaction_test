require File.expand_path(File.join("..", "base"), __FILE__)

class Profile < ActiveRecord::Base
  establish_connection CONFIG[:db_b]
end
