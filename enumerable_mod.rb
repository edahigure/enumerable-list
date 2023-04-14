module Enumerable
  def print_array(arr)
    puts arr
  end

  def all?(&block)
    flag = true
    each do |element|
      flag = false unless block.call(element)
    end
    puts flag
  end

  def any?(&block)
    flag = false
    each do |element|
      flag = true if block.call(element)
    end
    puts flag
  end

  def filter(&block)
    new_arr = []

    each do |element|
      new_arr.push(element) if block.call(element)
    end
    puts new_arr
  end
end
