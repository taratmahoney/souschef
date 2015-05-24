class Step < ActiveRecord::Base

  belongs_to :recipe
  
  include ESpeak

  def save
    speech = Speech.new(content)
  end


end
