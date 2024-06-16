class MyLogger
  @@logs = []
  @instance = new
  private_class_method :new

  def self.instance
    @instance
  end

  def log(value)
    p @@logs
    @@logs.push("#{Time.now.strftime("%d/%m/%Y %H:%M")}>>#{value}")
    return
  end

  def print_logs()
    @@logs.each do |value|
      p value
    end
  end
end
