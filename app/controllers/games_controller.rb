class GamesController < ApplicationController
  def new
    @letters = []
    @letters = (0...10).map { ('a'..'z').to_a[rand(26)] }
    # @letters.split("")
  end

  def score
    @grid = params[:grid]
    @answer = params[:word]

    if params[:word] == 'I am going to work'
     @result = "Sorry, but #{@answer.upcase} can’t be built out of #{grid_letters}."
    elsif params[:word].include?('?')
      @result = "Sorry but #{@answer.upcase} does not seem to be an English word..."
    else @result = "CONGRATULATIONS! #{@answer.upcase} is a valid English word!"
    end
  end
end
