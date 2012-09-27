class Notifier < ActionMailer::Base

	#layout "notifier"	
	
  default from: "kidslink.test@gmail.com"
  
  def order_created
    mail(:to => 'mpravin@maisasolutions.com', :subject => "Order") do |format|
    	format.html {render :layout => 'notifier'}    	
    end
  end
  
  def address_created
    mail(:to => 'mpravin@maisasolutions.com', :subject => "Address")    
  end
  
end
