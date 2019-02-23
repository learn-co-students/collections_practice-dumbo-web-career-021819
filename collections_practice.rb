require 'pry'
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
    array.sort {|a, b| a.length <=> b.length}
end

def swap_elements(array)
    array[1], array[2] = array[2], array[1] 
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.map do |a| 
        a[2] = "$" 
        a
    end
end

def find_a(array)
    array.select {|a| a.start_with?("a")}
end

def sum_array(array)
    array.reduce(:+)
end

def add_s(array)
    new_array = []
    array.each_with_index do |value, index|
        if index != 1
            new_array << value + "s"
        else
            new_array << value
        end
    end
    new_array
end