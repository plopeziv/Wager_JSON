class BetsController < ApplicationController
    def index
        @bets = Bet.all
        render json: @bets
    end

    def show
        @bet = Bet.find_by(betId: params[:id])
        render json: @bet
    end

    def create
        @bet = Bet.create(
            user_id: params[:user_id],
            betId: params[:betId],
            gameId: params[:gameId],
            chosenTeam: params[:chosenTeam],
            wager: params[:wager]
        )
        render json: @bet
    end

    def update
        @bet = Bet.find_by(betId: params[:id])
        @bet.update(
            user_id: params[:user_id],
            betId: params[:betId],
            gameId: params[:gameId],
            chosenTeam: params[:chosenTeam],
            wager: params[:wager]
        )
        render json: @bet
    end

    def destroy 
        @bets = Bet.all
        @bet = Bet.find_by(betId: params[:id])
        @bet.destroy

        render json: @bet
    end
end
