

desc "Sending reports about refundations to admin at the end of month"
task :send_report => :environment do
  require 'rufus/scheduler'
   scheduler = Rufus::Scheduler.singleton
  scheduler.every '1s' do
       puts "Test!"
       SendReportWorker.new.perform
  end
end
