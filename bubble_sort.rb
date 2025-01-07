def bubble_sort(array)
  array.each_with_index do |_, i|
    array.each_with_index do |_, j|

      break if j >= array.length - i - 1
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end  
end
    
array = [4,3,78,2,0,2]
p  bubble_sort(array)
# ==> [0, 2, 2, 3, 4, 78]