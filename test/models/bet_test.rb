require "test_helper"

class BetTest < ActiveSupport::TestCase
  test "Entry should not save with missing fields" do
    bet = Bet.new(user_id: 1)
    assert_not bet.save, "Bet was saved"
  end
end
