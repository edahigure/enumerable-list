require "./enumerable_mod.rb"

class MyList
  include Enumerable

  def initialize(array)
    @list = array
  end

  def listPrint
    print_array @list
  end
end

data = MyList.new([1, 2, 3, 4, 5, 6])

data.all? { |number| puts number * 10 }
