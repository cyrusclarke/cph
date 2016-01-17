class NotificationMailer < ActionMailer::Base
  default from: "no-reply@cphapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to:@place_owner.email,
      subject: "A Comment was added to your post #{@place.name}")
  	end
end
