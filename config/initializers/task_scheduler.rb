require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

 scheduler.every '1m' do
      puts "Test!"
      SendReportWorker.new.perform
      Rails.logger.info "hello, it's #{Time.now}"
 end
