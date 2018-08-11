arr = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]


# x.each_with_index do |item, index| #each_with_index takes both |item, index| ompared to each method that just takes |item|
#   puts "current_index: #{index}"
#   puts "#{index} item is #{item}";
# end



seated = false
arr.each_with_index do |item, index|
  break if seated
  item.each_with_index do |item2, index2|
    unless item2
      print "Row #{index +1 } seat #{index2 +1} is free. Do you want to sit? (y/n)"
      if gets.chomp.downcase == 'y'
        print "What is your name? "
        arr[index][index2] = gets.chomp
        seated = true
        break
      else
        next
      end
    end
  end
end

p seats
