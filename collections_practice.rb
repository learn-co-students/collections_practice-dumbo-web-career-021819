def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  swapped_array = []
  array.each_with_index do |element, index|
    if index == 1
      swapped_array << array[1..2].reverse[0]
    elsif index == 2
      swapped_array << array[1..2].reverse[1]
    else
      # all other elements
      swapped_array << element
    end
  end
  swapped_array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |string|
    string[2] = "$"
    new_array << string
  end
  new_array
end

def find_a(array)
  array.select do |string|
    string.start_with?("a")
  end
end

def sum_array(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  sum
end

def add_s(array)
  array.each_with_index.collect do |element, index|
    if index == 1
      element
    else
      element += "s"
    end
  end
end
