require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

#scheduler is set to send mails always at forst day of month
 scheduler.cron '0 0 1 * *' do
      puts "Test!------"
      SendReportWorker.new.perform
      Rails.logger.info "hello, it's #{Time.now}"
 end
