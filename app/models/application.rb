class Application < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  #presence validators
  validates_presence_of :name, :message => "Name is required"
  validates_presence_of :amount_of_money, :message => "Amount of money is required"
  validates_presence_of :category_id, :message => "Choose category"

  #format validators
  validates_format_of :name, with: /\p{Alpha}/, :message => "Name needs to contain only letters", :allow_blank => true
  validates_numericality_of :amount_of_money, :only_decimal => true,  :message => "Amount of money needs to be a number", :allow_blank => true

  #uniqueness validators
  validates_uniqueness_of :name, :message => "This name already exists"


end
