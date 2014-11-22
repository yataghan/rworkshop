class CommentMailer < ActionMailer::Base
  default from: "khizha@gmail.com"

  def comment_notification(comment)
    @comment = comment
    mail(to: "khizha@gmail.com", subject: "Checkout this comment!")
  end
end
