class Observer
  def update(_subject)
    raise NotImplementedError "#{self.class} has not implemented '#{__method__}'"
  end
end
