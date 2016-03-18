class ReportMailer < ApplicationMailer
  def report_email
    @current_month = Date.today.strftime("%m").to_i
    @current_year = Date.today.strftime("%Y").to_i
    @refundations = Refundation.where('extract(month from created_at) = ?', @current_month-1) #normalnie odjac jeden bo wysylamy 1 nastepnego miesiaca
    @admin_email = User.find_by_admin(true).email
    mail(to: @admin_email, subject: "Report - #{Date::MONTHNAMES[@current_month]}, #{@current_year} ")
  end
end
