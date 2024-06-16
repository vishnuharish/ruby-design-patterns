class Subject
  ["attach", "detach", "notify"].each do |method|
    define_method method do |arg| 
      raise NotImplementedError "#{self.class} has not implemented '#{__method__}'"
    end
  end

  def method_missing(method, arg, &block)
    if(method.to_s == "subscribe")
      self.send(:attach, arg)
    end

    if(method.to_s == "unsubscribe")
      self.send(:detach, arg)
    end

    if(method.to_s == "publish")
      self.send(:notify)
    end
  end
end
