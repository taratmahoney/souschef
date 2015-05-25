class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }, :if => :password
  validates :password, confirmation: true, :if => :password
  validates :password_confirmation, presence: true, :if => :password
  validates :email, uniqueness: true

  has_many :favorites
  has_many :recipes, through: :favorites


  def display_name
    if first_name
     return "#{first_name} #{last_name}"
   else
    return email 
    end
  end
end
