desc "Sending reports about refundations to admin at the end of month"
task :send_report => :environment do
  puts "Sending a report"
  SendReportWorker.new.perform
  puts "done."
end
