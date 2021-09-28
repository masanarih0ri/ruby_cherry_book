module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  
  # logメソッドをミックスインとしてもモジュールの特異メソッドとしても使えるようにする
  # module_functionは対象メソッドより下で呼び出す
  module_function :log
end

# モジュールの特異メソッドとして呼び出す
Loggable.log('Hello.')

# モジュールをincludeしたクラスを作る
class Product
  include Loggable
  
  def title
    log 'title is called.'
    puts 'A great movie'
  end
end

# ミックスインとしてlogメソッドを呼び出す
product = Product.new
product.title