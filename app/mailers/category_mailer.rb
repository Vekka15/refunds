class CategoryMailer < ApplicationMailer
  def report_email()
    @refundations = Refundation.all
    mail(to: 'zuzanna.sawala@gmail.com', subject: 'New category')
  end
end
