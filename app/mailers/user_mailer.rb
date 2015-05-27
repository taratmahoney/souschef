class UserMailer < ApplicationMailer
   def welcome_email
      @first_name = user.first_name
      @email = user.email
      @url = login_url
        mail(to: user.email)
  end

end
