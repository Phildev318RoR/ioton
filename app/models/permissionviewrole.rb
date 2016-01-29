class Permissionviewrole < ActiveRecord::Base
  belongs_to :permissionview
  belongs_to :role
end
