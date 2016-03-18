
task :send_report => :environment do
       SendReportWorker.new.perform
end
