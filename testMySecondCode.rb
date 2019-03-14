module GetClassInfo
  def getAllInfo
    puts "Class is :#{self.class}"
    puts "Methods is :#{self.methods}"
    puts "Object_id is :#{self.object_id}"
  end
  module_function :getAllInfo
end
class HelloWorld
  include GetClassInfo
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

module Body
  Height=1.80
  def getHeight
    Height
  end
end


