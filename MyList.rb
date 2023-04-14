require "./enumerable_mod.rb"

class MyList
  include Enumerable

  def initialize(*array)
    @list = array.flatten
  end

  def each(&block)
    @list.each(&block)
  end
end

data = MyList.new(1, 2, 3, 4, 5, 6)

data.filter { |e| e.even? }
