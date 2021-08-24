hash = { 'abc': 123 }
puts hash

# %記法とシンボル
# !を区切り文字に使うパターン
symbol = %s!ruby is fun!
puts symbol
# ()を区切り文字に使うパターン
symbol2 = %s(ruby is fun2)
puts symbol2

# シンボルの配列を作る場合
symbol_array = %i(apple orange melon)
puts '---'
print symbol_array

# 改行や式展開を使う場合は%Iを使う
name = 'alice'
symbol3 = %I(#{name.upcase})
puts '---'
print symbol3