module Enumerable
  def print_array(arr)
    puts arr
  end

  def all?(&block)
    flag = true
    each do |element|
      unless block.call(element)
        flag = false
      end
    end
    puts flag
  end

  def any?(&block)
    flag = false
    each do |element|
      if block.call(element)
        flag = true
      end
    end
    puts flag
  end

  def filter(&block)
    new_arr = []

    each do |element|
      if block.call(element)
        new_arr.push(element)
      end
    end
    puts new_arr
  end

end
