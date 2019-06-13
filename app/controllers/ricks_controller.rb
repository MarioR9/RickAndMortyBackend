class RicksController < ApplicationController

    def index
       render json: Rick.all
    end
    
end
