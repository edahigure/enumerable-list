require_relative './enumerable_mod'

class MyList
  include Enumerable

  def initialize(*array)
    @list = array.flatten
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter(&:even?)
