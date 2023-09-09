# frozen_string_literal: true

# bubble_sort
#   Description: Returns the user provided array sorted numerically following
#                the bubble sort methodology.
#   parameters: Array of integers (no limits)
#   return value: Array of integers (sorted numerically)

def bubble_sort(array)
  array = find_position(array)
  array = bubble_sort(array[0..array.length - 2]).push(array[array.length - 1]) if array.length > 2
  array
end

private

def find_position(array)
  array.each_with_index do |element, array_index|
    next unless array_index != array.length - 1 && element > array[array_index + 1]

    temp = element
    array[array_index] = array[array_index + 1]
    array[array_index + 1] = temp
  end
  array
end
