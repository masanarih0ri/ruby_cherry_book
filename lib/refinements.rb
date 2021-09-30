module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  # refinementsを有効化する
  using StringShuffle
  
  def initialize(name)
    @name = name
  end
  
  def shuffled_name
    # Userクラスの内部であればStringクラスのShuffleメソッドが有効になる
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name

# これはエラー
puts 'Hoge'.shuffle