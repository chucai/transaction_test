require File.expand_path(File.join("..", "base"), __FILE__)

class User < ActiveRecord::Base
  class << self
    def save_user_information_success
      User.transaction do
        user = User.create(:name => "user information save success")
        Profile.create(:user_id => user.id, :address => "success user address")
      end
      true
    end

    def save_user_information_failed
      User.transaction do
        Profile.transaction do
          user = User.create(:name => "user information save failed ")
          Profile.create(:user_id => user.id, :address => "failed user address")
          raise "saved failed"
        end
      end
    end
  end
end
