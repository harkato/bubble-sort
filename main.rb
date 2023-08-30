def bubble_sort(array)
    total_iterations = array.size - 1
    iterations = 0

    while iterations < total_iterations
        array.each_with_index do |number, index|
            next_index = index + 1
            next if next_index >= array.size
            number_right = array[next_index]
            if number > number_right
                array[index] = number_right
                array[next_index] = number
            end
        end
        iterations += 1
    end
    array
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
