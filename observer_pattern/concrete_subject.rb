require_relative('./subject.rb')

class ConcreteSubject < Subject
  attr_accessor :state

  
  def initialize
    @observers = []
  end

  def attach(observer)
    @observers<<observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    p "Notifying the observers"
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def message(message)
      @state = message
      puts "message #{message}"
      notify
  end

  alias_method :subscribe, :attach
  alias_method :unsubscribe, :detach

end
