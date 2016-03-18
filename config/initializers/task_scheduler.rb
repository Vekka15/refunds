require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

 # scheduler.cron '0 0 1 * *' do
 #      puts "Test!"
 #      SendReportWorker.new.perform
 #      Rails.logger.info "hello, it's #{Time.now}"
 # end
 scheduler.every '1m' do
      puts "Test!"
      SendReportWorker.new.perform
      Rails.logger.info "hello, it's #{Time.now}"
 end
