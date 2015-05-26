class Step < ActiveRecord::Base

  belongs_to :recipe

  include ESpeak


  def talk
    @speech = Speech.new(content, :speed => 100, :voice => "en-uk", :pitch => 80)
    @speech.speak
   filename = "mary.mp3"
    @speech.save(filename)
  end

end

