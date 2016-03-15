class Category < ActiveRecord::Base
  has_many :refundations
  has_many :applications
end
