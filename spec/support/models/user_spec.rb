require "rails_helper"

RSpec.describe User, :type => :model do
    before do
        @user = User.new(userId: "plopez45", name: "Pedro", accountBalance: 3200)
    end

    it "Will save with all entries filled" do
        @user.save
        assert_equal(1, User.where(:userId => "plopez45").count)
    end

    it "Will not save without userId" do
        @user.userId = nil
        @user.save
        assert_equal(0, User.where(:userId => "plopez45").count)
    end

    it "Will not save without name" do
        @user.name = nil
        @user.save
        assert_equal(0, User.where(:userId => "plopez45").count)
    end

    it "Will not save without accountBalance" do
        @user.accountBalance = nil
        @user.save
        assert_equal(0, User.where(:userId => "plopez45").count)
    end

    it "Will not save without a unique userId" do
        @invalidUser = User.new(userId: "plopez45", name: "Matt", accountBalance: 0)
        @user.save
        @invalidUser.save
        assert_equal(1, User.where(:userId => "plopez45").count)
    end
end