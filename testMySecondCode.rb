class HelloWorld
  Chart = "bazenga!"
  def getChart
    Chart
  end
  @@count = 1
  attr_accessor :newname
  def getCount
    @@count
  end
  def setCount(count)
    @@count=count
  end
  def initialize(newname)
    @newname=newname
  end
  class << self
    def bye(name:"link")
      puts "bye,#{name}!"
    end
  end
end

class << HelloWorld
  def hello(name:"link")
    puts "hello,#{name}!"
  end

end

def HelloWorld.say(name:"link")
  puts "#{name} say hi~~"
end

class MyHello < HelloWorld

  def initialize(*a)
    super(*a)
  end
end
