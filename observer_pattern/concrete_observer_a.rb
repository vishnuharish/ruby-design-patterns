require_relative("./observer.rb")
class ConcreteObserverA < Observer
  def update(subject)
    puts "Hey!!, we have something that you are intrested in" if subject.state.include?("IPhone")
  end
end
