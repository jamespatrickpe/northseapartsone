class Access < ActiveRecord::Base
  has_one :verification
  belongs_to :entity

  has_secure_password

end
