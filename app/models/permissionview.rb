class Permissionview < ActiveRecord::Base
  belongs_to :permission
  belongs_to :viewmenu
end
