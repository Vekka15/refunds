class SendReportWorker
  include Sidekiq::Worker
  def perform
    CategoryMailer.report_email.deliver_now
  end
end
