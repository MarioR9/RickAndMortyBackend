class RicksController < ApplicationController

    def index
       render json: Rick.all
    end

    def login 

     user = Rick.all.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
          payload = {user_id: user.id}
          token = encode(payload)
          morties = Rick.all.find_by(username: params[:username]).morties
          render json: {user: user, token: token, morties: morties} 
      else
          render json: {message: "not an user"}
      
        end
    end

    def authenticate
        token = request.headers["Authentication"].split(" ")[1]
        payload = decode(token)
        @user = Rick.find(payload["user_id"])
        morties = Rick.find(payload["user_id"]).morties
          render json: {user: @user, morties: morties} 
    end 

    def create
  
         newRick = Rick.create(username: params[:username],password: params[:password], age: params[:age], avatar: params[:avatar])
         newMorty = Morty.create(morty: params[:MortyId],rick_id: newRick.id)
         if newRick
           user = Rick.all.find_by(username: params[:username])
           payload = {user_id: user.id}
           token = encode(payload)
           morties = Rick.all.find_by(username: params[:username]).morties
        render json: {user: user, morties: morties, token: token }
         end
    end
    def edit 
        @editUser = Rick.find_by(username: params[:username])
    end

    def update 
      
        @editUser = Rick.find(params[:id])
        if @editUser
            @editUser.update_attributes(username: params[:username],password: params[:password],age: params[:age], avatar: params[:avatar])
            user = Rick.find(params[:id])
            morties = user.morties
        render json: {user: user, morties: morties}

        end
      
    end 
    
end
