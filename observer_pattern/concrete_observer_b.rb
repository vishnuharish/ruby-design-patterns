require_relative("./observer.rb")

class ConcreteObserverB < Observer
  def update(subject)
    puts "Hey!!, the new macBook pro has been released" if subject.state.include?("macBook") 
  end
end
