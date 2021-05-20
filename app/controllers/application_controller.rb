class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload,'s3cr3t')
    end

    def auth_header
        # this is because we are expecting the header of the request to contain our beloved token
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            #this is because were expecting the token to be in {'Authorization':'Bearer <token>'} so need to spllit then get the second instance
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 's3cr3t', true, algorithm:'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            #decode_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
            #or nil if we cant decode the token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id:user_id)
        end
    end

    def logged_in?
        !!current_user
    end

end
