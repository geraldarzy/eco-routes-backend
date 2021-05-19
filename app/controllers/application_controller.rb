class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload,'s3cr3t')
    end

    def decoded_token(token)
        JWT.decode(token,'s3cr3t')
    end

end
