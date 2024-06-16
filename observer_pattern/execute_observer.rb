require_relative("./concrete_subject.rb")
require_relative("./concrete_observer_a.rb")
require_relative("./concrete_observer_b.rb")

subject = ConcreteSubject.new

observer_a = ConcreteObserverA.new
observer_b = ConcreteObserverB.new

subject.attach(observer_a)
subject.subscribe(observer_b)

subject.message("IPhone")
subject.message("macBook")

subject.unsubscribe(observer_a)

subject.message("macBook")
subject.message("IPhone")

subject.detach(observer_b)
