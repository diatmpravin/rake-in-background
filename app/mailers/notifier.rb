class Notifier < ActionMailer::Base

	layout "email"	
	
  default from: "kidslink.test@gmail.com"
  
  def order_created
    mail(:to => 'mpravin@maisasolutions.com', :subject => "Welcome to My Awesome Site")
  end
end
