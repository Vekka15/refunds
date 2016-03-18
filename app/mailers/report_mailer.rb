class ReportMailer < ApplicationMailer
  def report_email
    @users = User.all
    @current_month = Date.today.strftime("%m").to_i
    @current_year = Date.today.strftime("%Y").to_i
    #we are sending mail always at first day of new month so we need to get all refundations from last month
    # if is used to prevent having 0 month
    if (@current_month!=1)
      @refundations = Refundation.where('extract(month from created_at) = ?', @current_month-1  ) #normalnie odjac jeden bo wysylamy 1 nastepnego miesiaca
    else
      @refundations = Refundation.where('extract(month from created_at) = ?', 12 )
    end
    @admin_email = User.find_by_admin(true).email
    mail(to: @admin_email, subject: "Report - #{Date::MONTHNAMES[@current_month-1]}, #{@current_year} ")
  end
end
