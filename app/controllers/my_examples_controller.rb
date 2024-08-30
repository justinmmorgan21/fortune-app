class MyExamplesController < ApplicationController
  def initialize
    @visits = 0
  end

  def fortune_teller
    # Feature 1: The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.
    fortunes = ["You will win the lottery this year", "You will receive a promotion this year", "You will meet the love of your life this year"]
    fortune = fortunes.sample

    render json: {message: "Fortune: #{fortune}" }
  end

  def random_numbers
    # Feature 2: The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.
    nums = []
    6.times { 
      nums << rand(1..60)
    }

    render json: {message: "Lotto Numbers: #{nums}" }
  end

  def count_visits
    # Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.
    @visits += 1
    object = self.to_s

    render json: {message: "Number of visits: #{@visits}, object: #{object}"}
  end

  def bottles_o_beer
    str = ""
    arr = 99.step(by: -1, to: 3).entries
    arr.each { |num|
      str += "#{num} bottles of beer on the wall, #{num} bottles of beer. Take one down, pass it around, #{num - 1} bottles of beer on the wall... "
    }
    str += "2 bottles of beer on the wall, 2 bottles of beer. Take one down, pass it around, 1 bottle of beer on the wall... 1 bottle of beer on the wall, 1 bottle of beer, take it down, pass it around, no more bottles of beer on the wall. :( :( :("
    render json: {message: "#{str}"}
  end
end
