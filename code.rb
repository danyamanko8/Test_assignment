def count_max_people_number(time_intervals)
  if time_intervals == []
    return 'Should not be empty'
  else
    array_of_values = time_intervals.map{|el1, el2| (el1...el2).to_a}.flat_map{|el| el}
    result = array_of_values.uniq.map{|number| array_of_values.count(number)}.max
  end
    p result
  end

count_max_people_number([[1, 8], [2, 7], [3, 5], [5, 7], [6, 7], [6, 8], [7, 8]])
