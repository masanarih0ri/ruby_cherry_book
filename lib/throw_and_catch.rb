fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |number|
      puts "#{fruit}, #{number}"
      if fruit == 'orange' && number == 3
        throw :done
      end
    end
  end
end