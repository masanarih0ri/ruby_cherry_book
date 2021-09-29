require 'singleton'

class Configration
  # singletonモジュールをinclude
  include Singleton
  
  attr_accessor :base_url, :debug_mode
  
  def initialize
    # 設定値を初期化
    @base_url = ''
    @debug_mode = false
  end
end

# これはエラー
# config = Configration.new

# instanceメソッドを使ってインスタンスを取得する
config = Configration.instance
# 設定値を設定する
config.base_url = 'http://example.com'
config.debug_mode = true

# instanceメソッドを使ってインスタンスを取得する
other = Configration.instance

# 手前で設定した値を取得できる
puts other.base_url
puts other.debug_mode

puts other.object_id
puts config.object_id

puts config.equal?(other)