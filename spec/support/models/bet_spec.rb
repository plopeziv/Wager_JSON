require "rails_helper"

RSpec.describe Bet, :type => :model do
    before do
        @user = User.new(userId: "plopez32", name: "Pedro", accountBalance: 3200)
        @user.save
    end

    it "Will save with all entries filled" do
        @bet = @user.bets.create(betId: "plo462", gameId: "Loyola374", chosenTeam: "Loyola",  wager: 32)
        assert_equal(1, Bet.where(:betId => "plo462").count)
    end

    it "Will not save without user" do
        @bet = Bet.new(betId: "plo462", gameId: "Loyola374", chosenTeam: "Loyola",  wager: 32)
        @bet.save
        assert_equal(0, Bet.where(:betId => "plo462").count)
    end

    it "Will not save without gameId" do
        @bet = Bet.new(betId: "plo462", chosenTeam: "Loyola",  wager: 32)
        @bet.save
        assert_equal(0, Bet.where(:betId => "plo462").count)
    end

    it "Will not save without chosenTeam" do
        @bet = Bet.new(betId: "plo462", gameId: "Loyola374",  wager: 32)
        @bet.save
        assert_equal(0, Bet.where(:betId => "plo462").count)
    end

    it "Will not save without wager" do
        @bet = Bet.new(betId: "plo462", gameId: "Loyola374", chosenTeam: "Loyola",  wager: 32)
        @bet.save
        assert_equal(0, Bet.where(:betId => "plo462").count)
    end

    it "Will not save without a unique betId" do
        @bet = @user.bets.create(betId: "plo462", gameId: "Loyola374", chosenTeam: "Loyola",  wager: 32)
        @user.bets.create(betId: "plo462", gameId: "Rutgers74", chosenTeam: "Rutgers",  wager: 0)
        assert_equal(1, Bet.where(:betId => "plo462").count)
    end
end