desc "Send Email Notification"
task :send_mail => :environment do
  puts "#############################"
  Notifier.order_created.deliver  
end

