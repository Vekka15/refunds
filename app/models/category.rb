class Category < ActiveRecord::Base
  has_many :refundations
  has_many :applications

  #presence validators
  validates_presence_of :name, :message => "Name is required"
  validates_presence_of :percent, :message => "Percent is required"

  #format validators
  validates_format_of :name, with: /\p{Alpha}/, :message => "Name needs to contain only letters"
  validates_numericality_of :percent, :only_integer => true, :message => "Percent needs to be a number"
  validates_numericality_of :percent, :less_than_or_equal_to => 100, :message => "Percent needs to be a number"

  #uniqueness validators
  validates_uniqueness_of :name, :message => "This name already exist"

end
