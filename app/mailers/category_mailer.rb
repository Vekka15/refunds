class CategoryMailer < ApplicationMailer
  def report_email()
    @refundations = Refundation.all
    @date = Date.today
    if (Date.today==Date.today)
      mail(to: 'zuzanna.sawala@gmail.com', subject: "Raport - #{Date.today}")
    end
  end
end
