class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  has_many :translations
  before_save -> do
    # self.uid = SecureRandom.uuid
    skip_confirmation!
  end
end
