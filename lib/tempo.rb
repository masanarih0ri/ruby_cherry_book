class Tempo
  include Comparable
  
  attr_reader :bpm
  
  def initialize(bpm)
    @bpm = bpm
  end
  
  def <=>(other)
    if other.is_a?(Tempo)
      # bpm同士を比較した結果を返す
      bpm <=> other.bpm
    else
      nil
    end
  end
  
  # 結果を見やすくするためにinspectを上書きする
  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120).inspect
t_180 = Tempo.new(180).inspect

puts t_120
puts t_180

puts t_120 < t_180
puts t_120 >= t_180
puts t_120 == t_180