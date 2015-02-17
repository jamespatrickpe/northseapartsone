class Entity < ActiveRecord::Base
  has_one :access
  has_one :contact_detail
end
