class Department < ActiveRecord::Base
  belongs_to :client
  has_many :sites
end