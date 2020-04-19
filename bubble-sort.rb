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
