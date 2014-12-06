class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  has_many :translations
  before_save -> do
    # self.uid = SecureRandom.uuid
    skip_confirmation!
  end
  ACCOUNTS = %w[user translator admin]
  def account?(base_account)
    account.nil? ? false : ACCOUNTS.index(base_account.to_s) <= ACCOUNTS.index(account)
  end
end
