class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :favorites
  has_many :recipes, through :favorites
end
