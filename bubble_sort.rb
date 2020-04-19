def bubble_sort(arr)

  n = 1
  (0..arr.length - n).each do
    (0...arr.length - 1).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
    n += 1
  end
  arr
end

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
