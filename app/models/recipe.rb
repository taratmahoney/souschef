class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :steps, -> { order(position: :asc)}
  has_many :favorites
  has_many :users, through: :favorites
  belongs_to :users
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :steps
end
