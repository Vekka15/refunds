desc "Remind users if they haven't completed registration"
task :remind_of_registration => :environment do
  puts "Reminding users of registration"
  SendReportWorker.new.perform
  puts "done."
end
