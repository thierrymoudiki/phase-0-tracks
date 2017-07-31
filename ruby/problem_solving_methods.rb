# --- Search in an array 

# Search an integer in an array 
def search_array(input_array, searched_elt)
  # Examples 
  #  arr = [42, 89, 23, 1]
  #p search_array(arr, 1)
  #=> 3
  #p search_array(arr, 24)
  #=> nil
  #= end 
  
  # loop on the array 'array_of_integers'
  # if 'searched_integer' is found, take the index 
  result = 0
  tab_index = 0 
  input_array.each do |i|
     if (i == searched_elt)
      result = tab_index
     end 
   tab_index += 1
  end

  if result == 0 
    puts "Element not found"
  else
    return (result)
  end   

end   

# --- Fibonacci

# Returns numbers from the Fibonacci sequence 
def fibonacci(n)
  # create an array with n elements 
  # result_table will contain the final results 
  result_table = Array.new(n, 0)
  
  # initial elements of the sequence 
  result_table[0] = 0
  result_table[1] = 1
  
  # Fist element already calculated
  # we start with the 3rd 
  tab_index = 2
  (n-2).times do
    # the array element is equal to the sum of 2 previous elements
    result_table[tab_index] = result_table[tab_index-1] + result_table[tab_index-2] 
    tab_index += 1
  end
  
  return result_table
end   
# fibonacci(6)
# fibonacci(100)[99]


# --- Bubble sort 

# Performs 1 bubble sort pass 
def bubble_sort_pass(input_array)
  n = input_array.size
  tab_index = 0
  nb_swaps = 0
  
  # Loop through the array 
  (n-1).times do
    index1 = tab_index
    index2 = tab_index + 1 
      if (input_array[index1] > input_array[index2]) then
        # counting the swaps each time they occur
        nb_swaps += 1
        # Exchange elements if input_array[index1] > input_array[index2]
        temp = input_array[index1]
        input_array[index1] = input_array[index2]
        input_array[index2] = temp
      end
    tab_index += 1
  end
  
  # returns a hash with the modified array 
  # and the number of pass
  res = {"result_array" => input_array,
         "nb_swaps" => nb_swaps}
  
  return(res)
end   

# main bubble sort program 
# Performs 1 bubble sort pass until 
# no more swaps are performed in a pass
def bubble_sort(input_array)
  
  nb_swaps = 1000
  
  # the loop will be exited when number of swaps = 0 
  until (nb_swaps == 0) do 
    res = bubble_sort_pass(input_array)
    nb_swaps = res["nb_swaps"]
  end 
  
  return(res["result_array"])
  
end   
#arr = [5, 1, 9, 2, 8, 10, 7, 4, 6, 3]
#bubble_sort(arr)
#arr = [5, 1, 9, 2]
#bubble_sort(arr)