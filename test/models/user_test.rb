require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
        @user = User.new(username: "Example User", email: "user@example.com", password_digest:'123456')
    end

    test "should be valid" do
    	assert @user.valid?
    end

    test "username should be present" do
    	@user.username = ""
    	assert_not @user.valid?
    end

    test "user email should be present" do
    	@user.email = ""
    	assert_not @user.valid?
    end	

    test "user password should be present" do
    	@user.password_digest = ""
    	assert_not @user.valid?
    end	
end
