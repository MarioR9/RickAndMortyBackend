class RicksController < ApplicationController

    def index
       render json: Rick.all
    end
    def login 
        
      if Rick.all.find_by(name: params[:name])
          render json: Rick.all.find_by(name: params[:name])
      else
          render json: {message: "not an user"}
      
        end
    end

    def create
         newRick = Rick.find_or_create_by(name: params[:name], age: params[:age], char: params[:char])
         newMorty = Morty.find_or_create_by(morty: params[:MortyId],rick_id: newRick.id)
         if newRick
           rick = Rick.all.find_by(name: params[:name])
        render json: rick
         end
    end
    
end
