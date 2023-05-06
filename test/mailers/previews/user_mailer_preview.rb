# Preview all emails at http://rails_tutorial_3-2b19e14a351c41d6a550ad9690f8b069.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://rails_tutorial_3-2b19e14a351c41d6a550ad9690f8b069.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://rails_tutorial_3-2b19e14a351c41d6a550ad9690f8b069.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end
