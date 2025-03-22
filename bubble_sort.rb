=begin
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
=end

puts "Enter array of numbers"

# Convert input string into array
arr = gets.chomp.tr('[]', '').split(',').map {|num| num.to_i}
# short form: .map(&:to_i) 

def bubble_sort(arr)
    n = arr.length

    loop do
        swapped = false
        (n-1).times do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
            end
        end
        break if !swapped
    end

    return arr
end

print bubble_sort(arr)