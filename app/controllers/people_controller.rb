class PeopleController < ApplicationController
    def index
        @person = Person.order('RANDOM()').first
        @compliments = @person.compliments
        @new_compliment = Compliment.new
    end
end
