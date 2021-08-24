h = { us: 'dollar', india: 'rupee' }
data = { japan: 'yen', **h }

puts data

# **を付けない場合はエラーになる
# data2 = { japan: 'yen', h }
# puts data2

# mergeメソッドを使っても同じ結果
h2 = { us: 'dollar', india: 'rupee' }
data2 = { japan: 'yen' }.merge(h2)
puts data2

# ハッシュを使った擬似キーワード引数
# 間違った引数を渡してもエラーにならないので使うなら別途エラー処理を書く必要がある
# なので特別な理由がなければキーワード引数を使う
def buy_burger(menu, options = {})
  drink = options[:drink]
  potato = options[:potato]
  puts menu
  puts drink
  puts potato
end

buy_burger('cheese', drink: true, potato: true)

# 任意の引数を受け付ける ** 引数
def buy_burger2(menu, drink: true, potato: true, **others)
  puts others
end

buy_burger2('cheese2', drink: true, potato: false, salad: true, chiken: false)

# Hashから配列への変換
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
array = currencies.to_a
hash = array.to_h
# hashにできない形の配列に対して使うとエラー
# [1,2,3,4].to_h
print hash

# ハッシュの初期値
# sample_hash = {}
# sample_hash[:foo] => nil
# sample_hash = Hash.new('hello')
# puts sample_hash[:foo] => hello
new_hash = Hash.new('hello')
a = new_hash[:foo]
b = new_hash[:bar]

puts a.equal?(b)

# a.upcase!
# puts a
# puts b
# upcase!で破壊的変更をしているのでaもbも変わってしまう

# Hash.newにブロックを与える場合
block_with_hash = Hash.new { |hash, key| hash[key] = 'hello' }
hash_a = block_with_hash[:foo]
hash_b = block_with_hash[:bar]

puts block_with_hash
puts hash_b
puts hash_a.equal?(hash_b)