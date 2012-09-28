class EmailNotificationObserver < ActiveRecord::Observer

  observe :order, :address
  
  def after_create(model)    
  	if model.class.name == "Order"
  	  for i in 0..5
  	    #sleep 100
  	  	#puts "#############################"
  	  	#Notifier.order_created.deliver
  	  	
  	  	#EXECUTE RAKE
  	  	system "rake send_mail --trace &"
  	  	
  	  	#MAKE RAKE TASK UNIVERSAL
  	  	#call_rake :send_mail
  	  end    	
    else
    	Notifier.address_created.deliver	
    end    
  end
  	
end
