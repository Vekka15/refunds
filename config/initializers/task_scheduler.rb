require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

 scheduler.at '2016/03/18 00:26:00' do
      puts "Test!"
      SendReportWorker.new.perform
      Rails.logger.info "hello, it's #{Time.now}"
 end
