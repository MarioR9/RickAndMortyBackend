class MortiesController < ApplicationController
    
    def index
        render json: Morty.all
     end
    def create 
        currentMorty = Rick.find(params[:rickID]).morties.find{|morty|morty.morty == params[:morty]}
        if(currentMorty)
            render json: {message: "Oops wrong Morty"} 
        else       
        
        newMorty = Morty.create(morty: params[:morty], rick_id: params[:rickID],food: params[:food],health: params[:health],level: params[:level])
        rick = Rick.find(params[:rickID])
        render json: {user: rick, morties: rick.morties}
        end
    end 

    def destroy 
        
        mortyID = Rick.find(params[:rickID]).morties.find{|morty|morty.morty == params[:mortyId]}.id
      
        Morty.find(mortyID).destroy

        rick = Rick.find(params[:rickID])
        render json: {user: rick, morties: rick.morties}
    end

end



