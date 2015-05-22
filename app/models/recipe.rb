class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :steps
  has_many :favorites
  has_many :users, through: :favorites
end
