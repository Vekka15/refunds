require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

 scheduler.every '1s' do
      puts "Test!"
      Rails.logger.info "hello, it's #{Time.now}"
      # SendReportWorker.new.perform
 end
