require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Entry should not save with missing fields" do
    @user = User.new
    assert_not @user.save, "Bet was saved"
  end

  test "New entry with all fields can be saved" do
    @user = User.new(userId: "plopez45", name:"Pedro", accountBalance: 3200)
    assert @user.save, "Bet was not saved"
  end

  test "userId's should be unique" do
    @user1 = User.new(userId: "plopez45", name:"Pedro", accountBalance: 3200)
    @user2 = User.new(userId: "plopez45", name:"Matt", accountBalance: 1200)
    assert_not @user2.save, "Bet was saved, userId's need to be unique"
  end
end
