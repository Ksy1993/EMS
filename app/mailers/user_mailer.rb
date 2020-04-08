class UserMailer < ApplicationMailer
    default from: "kalyansingh6030@gmail.com"
    layout "mailer"
  def signup_confirmation(user)
    @user = user
    mail(to: @user.email, subject: "Sign Up Confirmation")
  end
end
