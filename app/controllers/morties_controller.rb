class MortiesController < ApplicationController
    
    def index
        render json: Morty.all
     end

end
