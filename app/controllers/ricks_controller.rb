class RicksController < ApplicationController

    def index
       render json: Rick.all
    end

    def login 

     user = Rick.all.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
          payload = {user_id: user.id}
          token = encode(payload)
          render json: {user: user, token: token}
      else
          render json: {message: "not an user"}
      
        end
    end

    def create
  
         newRick = Rick.create(username: params[:username],password: params[:password], age: params[:age], avatar: params[:avatar])
         newMorty = Morty.create(morty: params[:MortyId],rick_id: newRick.id)
         if newRick
           rick = Rick.all.find_by(username: params[:username])
        render json: rick
         end
    end
    
end
