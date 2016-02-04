class Site < ActiveRecord::Base
  belongs_to :department
  has_many :iotonservers
end