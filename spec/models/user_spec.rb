require File.expand_path(File.join("../..", "spec_helper"), __FILE__)

describe User do
  it "should create user success" do
    user = User.new(:name => "hexudong")
    user.save.should be_true
  end


  it "should save user and profile" do
    User.save_user_information_success.should be_true
  end


  it "should raise a exception" do
    expect {
      User.save_user_information_failed
    }.to raise_exception
  end
end
