require 'rufus/scheduler'
 scheduler = Rufus::Scheduler.new

 scheduler.every '1M' do
      puts "Test!"
      SendReportWorker.new.perform
 end
