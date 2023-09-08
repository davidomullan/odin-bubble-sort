# bubble_sort
# 	Description: Returns the user provided array sorted numerically following
# 							 the bubble sort methodology.
# 	parameters: Array of integers (no limits)
# 	return value: Array of integers (sorted numerically)
def bubble_sort(array)
	puts array.join()
	array.each_with_index { |element, arrayIndex|
		if arrayIndex!=array.length-1
			if element>array[arrayIndex+1]
				temp = element
			 	array[arrayIndex]=array[arrayIndex+1]
			 	array[arrayIndex+1] = temp
			end
		end
		puts array.join()
	}
	if array.length>2
		lastElem = array[array.length-1]
		array = bubble_sort(array[0..array.length-2]).push(lastElem)
	end

	return array
end