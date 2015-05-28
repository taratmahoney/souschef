class Step < ActiveRecord::Base

  belongs_to :recipe
  acts_as_list scope: :recipe

end

