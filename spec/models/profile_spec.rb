require File.expand_path(File.join("../..", "spec_helper"), __FILE__)

describe Profile do
  it "should create Profile success" do
    profile = Profile.new(:user_id => 1, :address => "Beijing")
    profile.save.should be_true
  end
end
