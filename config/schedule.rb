# Use this file to easily define all of your cron jobs.

# :day, :at => '12:20am'
every 1.minutes do
  rake "remind_of_registration", :output => 'log/check_status_rake.log'
end
