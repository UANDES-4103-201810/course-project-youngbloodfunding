class BackedProjectMailer < ActionMailer::Base
  default :from => "noreply@mydomain.com"

  def backer_confirmation(backed_project, user)
    @backed_project = backed_project
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Please confirm your funding.")
  end
end