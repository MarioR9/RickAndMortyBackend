class MortiesController < ApplicationController
    
    def index
        render json: Morty.all
     end
    def create 
     
        newMorty = Morty.create(morty: params[:morty], rick_id: params[:rickID],food: params[:food],health: params[:health],level: params[:level])
        rick = Rick.find(params[:rickID])
        render json: {user: rick, morties: rick.morties}
        
    end 

    def destroy 
    
        Morty.find(params[:mortyId]).destroy
        rick = Rick.find(params[:rickID])
        render json: {user: rick, morties: rick.morties}
      end

    def update 
     
            Morty.find(params[:mortyId]).update_attributes(food: params[:food],health: params[:health],level: params[:level])
            user = Rick.find(params[:rickID])
            morties = Morty.find(params[:mortyId])
        render json: {user: user, morties: morties}

    
      
    end 

end



              

