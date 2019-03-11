def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|x, y| y <=> x}
end

def sort_array_char_count(array)
  array.sort_by {|s| s.size}
end

def swap_elements(array)
  third_to_second = array.delete(array[2])
  array.insert(1, third_to_second)
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.map do |string|
    "#{string[0..1]}$#{string[3..-1]}"
  end
end

def find_a(array)
  array.select {|s| s[0] == 'a'}
end

def sum_array (array)
  array.sum
end

def add_s(array)
  array.map.with_index do |word, index|
    unless index == 1
      "#{word}s"
    else
      word
    end
  end
end
