class PeopleController < ApplicationController


    def index
        @person = Person.order('RANDOM()').first
        @new_compliment = Compliment.new
    end

    def me
        @person = current_person
        @compliments = @person.compliments
    end

end