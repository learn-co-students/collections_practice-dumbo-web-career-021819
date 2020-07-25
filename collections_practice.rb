def sort_array_asc(arr)
  return arr.sort
end

def sort_array_desc(arr)
  return arr.sort{ |a, b| b <=> a}
end

def sort_array_char_count(arr)
  return arr.sort{ |a, b|  a.length > b.length ? a <=> b : b <=> a }
end

def reverse_array(arr)
  return arr.reverse
end

def swap_elements(arr)
  new_arr = Array.new(arr)
  new_arr[1] = arr[2]
  new_arr[2] = arr[1]
  return new_arr
end

#doesn't work
def kesha_maker(arr)
  arr.map do |word|
    word_arr = word.chars.map.with_index do |c, i|
      if (i == 2)
        "$"
      else
        c
      end
    end
    word_arr.join
  end
end
# ^^ failing

def find_a(arr)
  return arr.select {|word| word.start_with?("a")}
end

def sum_array(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  return sum
end

def add_s(arr)
  new_arr = arr.each_with_index.collect do |word, i|
    if i == 1
      word
    else
      word = word + "s"
    end
  end
end
