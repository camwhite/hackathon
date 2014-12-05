#class ApplicationController < ActionController::API
class ApplicationController < ActionController::Base
  # include ActionController::MimeResponds
  include DeviseTokenAuth::Concerns::SetUserByToken

  respond_to :json
end
