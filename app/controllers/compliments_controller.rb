class ComplimentsController < ApplicationController

    def create
        @person = Person.find(params[:person_id])
        @compliment = @person.compliments.create(compliment_params)
        redirect_to root_path
    end

    def compliment_params
        params.require(:compliment).permit(:body, :attribution)
    end
end




