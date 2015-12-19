class NotificationMailer < ActionMailer::Base
  default from: "noreply@cphapp.com"

  def comment_added(comment)
  		mail(to: "cyrusjclarke@gmail.com", subject: "A Comment was added to your post")
  	end 
end
