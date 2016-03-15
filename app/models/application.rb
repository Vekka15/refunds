class Application < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates_presence_of :name, :message => "Nazwa jest wymagana"
  validates_presence_of :amount_of_money, :message => "Amount of money jest wymagana"
  validates_presence_of :category_id, :message => "Choose category"
  #
  validates_format_of :name, with: /\p{Alpha}/, :message => "Nazwa musi zawierać litery", :allow_blank => true
  validates_numericality_of :amount_of_money, :only_decimal => true, :message => "Poziom musi być liczbą", :allow_blank => true
  #
  validates_uniqueness_of :name, :message => "Nazwa już istnieje"

end
