def bubble_sort(arr)

i= 0
n= 1

for i in 0...arr.length-n
    j = 0
    for j in 0...arr.length-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end    
    end
    i+=1   
    n+=1 
end
arr
end

def bubble_sort_by(arr)

    arr_len = arr.length
    swap_occur = true
    i = 1

    while swap_occur
      swap_occur = false

      (0...arr_len - i ).each do |x|
        next unless yield(arr[x], arr[x+1]) >= 1
          arr[x], arr[x + 1] = arr[x + 1], arr[x]
          swap_occur = true
        end
        i += 1
      end
      arr
end




print bubble_sort_by(["hello", "hey", "hi"]) { |left, right| left.length - right.length } 
  