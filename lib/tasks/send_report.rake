desc "Sending reports about refundations to admin at the end of month"
task :remind_of_registration => :environment do
  puts "Sending a report"
  SendReportWorker.new.perform
  puts "done."
end
