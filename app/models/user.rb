class User < ApplicationRecord
    has_many :bets
    validates :name, :accountBalance, presence: true
    validates :userId, presence: true, uniqueness: true
end
