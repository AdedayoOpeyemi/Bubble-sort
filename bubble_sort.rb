def bubble_sort(arr)
  n = 1
  (0..arr.length-n).each do |i|
    j = 0
    (0...arr.length-1).each do |j|
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end    
    end
    i+=1
    n+=1
end
  arr
end

print bubble_sort([1,7,2,9,3,4])

def bubble_sort_by(arr)
  arr_len = arr.length
  swap_occur = true
  i = 1

  while swap_occur
    swap_occur = false
    (0...arr_len - i).each do |x|
      next unless yield(arr[x], arr[x + 1]) >= 1

      arr[x], arr[x + 1] = arr[x + 1], arr[x]
      swap_occur = true
    end
    i += 1
  end
  arr
end

# print bubble_sort_by(["hello", "hey", "hi"]) { |left, right| left.length - right.length }
