# numbers = [1, 2, 3, 4, 5]
# numbers.each do |n|
#   # nが偶数の時にはputsを処理せずに次に進む
#   next if n.even?
#   puts n
# end

# breakと同じようにwhile文やuntil文、for文の中でも使える
# numbers = [1, 2, 3, 4, 5]
# i = 0
# while i < numbers.size
#   n = numbers[i]
#   i += 1
#   next if n.even?
#   puts n
# end

# 繰り返し処理が入れ子になっている場合
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3, 4]

fruits.each do |fruit|
  numbers.each do |number|
    next if number.even?
    puts "#{fruit}, #{number}"
  end
end