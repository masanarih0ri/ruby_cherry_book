# print ['ruby', 'js', 'python'].map { |s| s.upcase }
# 上記をsymbolを使ってかくと
print ['ruby', 'js', 'python'].map(&:upcase)

# print [1,2,3,4,5,6].select { |n| n.odd? }
# 上記のコードをsymbolを使って書き直す

print [1,2,3,4,5,6].select(&:odd?)

# 1.ブロック引数が1つだけ
# 2.ブロック内部で呼び出すメソッドには引数がない
# 3.メソッドを1回呼び出す以外の処理がない という条件が揃った時にsymbolを使える