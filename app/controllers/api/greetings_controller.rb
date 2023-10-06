module Api
  class GreetingsController < ApplicationController
    def random
      random_greeting = Message.order('RANDOM()').first
      render plain: random_greeting.content
    end
  end
end
