class EmailNotificationObserver < ActiveRecord::Observer

  observe :order, :address
  
  def after_create(model)    
  	if model.class.name == "Order"
    	Notifier.order_created.deliver
    else
    	Notifier.address_created.deliver	
    end    
  end
  	
end
