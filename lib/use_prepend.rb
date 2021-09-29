# 以下のProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    'A great film'
  end
end

# prependするためのモジュールを定義する
module NameDecorator
  def name
    # prependするとsuperはミックスインした先のnameメソッドを呼び出す
    "<<#{super}>>"
  end
end

# 既存メソッドを変更するためにProductクラスを再オープンする
class Product
  # prependでミックスインする
  prepend NameDecorator
end

# nameを上書きできる
product = Product.new
puts product.name

# Productクラスに対してprependを呼び出しても同様の結果が得られる
# Product.prepend NameDecorator 