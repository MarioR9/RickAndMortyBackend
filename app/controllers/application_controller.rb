class ApplicationController < ActionController::API


    def secret_key
        'hello'
    end
    # takes a payload and returns a token
    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end
    # will return the og payload
    def decode(token)
        JWT.decode(token, secret_key, true,{ algorithm: 'HS256'})[0]
    end
end
