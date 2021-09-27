module Loggeable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggeable
  
  def self.create_products(names)
    #logメソッドをクラスメソッド内部で呼び出す
    #(つまりlogメソッド自体もクラスメソッドになっている)
    log 'create_products is called.'
  end
end

# クラスメソッド経由でlogメソッドが呼び出される
Product.create_products([]) # =>[LOG] create_products is called.

# Productクラスのクラスメソッドとして直接呼び出すことも可能
 Product.log('Hello.')