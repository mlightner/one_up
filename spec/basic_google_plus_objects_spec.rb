require "one_up"
require 'factory_girl'
require 'factories'

describe "Google Plus objects" do

  before(:each) do
    @post = FactoryGirl.build(:post)
  end

  it "has attribute accessors defined for viewer" do
    @post.should respond_to(:viewer)
    @post.viewer.should_not be_blank
  end

  it "has content" do
    @post.text.should equal "Something neat"
  end

end
