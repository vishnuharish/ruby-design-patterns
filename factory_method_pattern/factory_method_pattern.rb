module LogisticsFactory

  class ModeOfTransportation
    def deliver
      raise NotImplementedError "#{self.class} has not implemented '#{__method__}"
    end
  end

  class Truck < ModeOfTransportation
    def deliver()
      p "I deliver by road"
    end
  end

  class Ship < ModeOfTransportation
    def deliver()
      p "I deliver by sea"
    end
  end

  class Flight < ModeOfTransportation
    def deliver()
      p "I use the sky route to deliver"
    end
  end


  class LogisticsOutlet
    def factory_method
      raise NotImplementedError "#{self.class} has not implemented '#{__method__}"
    end

    def some_operation
      transport = factory_method
      "CREATOR: The same creator code has just worked with #{transport.deliver}"
    end
  end

  class OverseasDeliverables < LogisticsOutlet
    def factory_method
      Ship.new
    end
  end

  class LocalDeliverables < LogisticsOutlet
    def factory_method
      Truck.new
    end
  end

  class SwiftDeliverables < LogisticsOutlet
    def factory_method
      Flight.new
    end
  end

  def self.client_code(logistics)
    p "I am a vendor i don't know where the product has to be deliver on which mode it has to be delivered but still i deliver #{logistics.some_operation}"
  end

  def self.run()
    client_code(OverseasDeliverables.new)
    client_code(LocalDeliverables.new)
    client_code(SwiftDeliverables.new)
  end
end
