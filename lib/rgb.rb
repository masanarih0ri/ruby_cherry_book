def to_hex(r, g, b)
  # 16進数は0、1、2、3、4、5、6、7、8、9、A、B、C、D、E、Fで0-15を表す
  # 16は10、そこから11,12...と進んで1Fまで進む
  # 32は20、そこから21,22...と進んで2Fまで進む
  # 240はF0、そこからF1,F2...と進んでFFまで進む
  # eachを使うパターン
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  
  # injectを使うパターン
  [r, g, b].inject("#") { |hex, n| hex + n.to_s(16).rjust(2, '0') }
end

def to_ints(hex)
  # base = hex.slice(1, hex.size - 1)
  # baseArr = base.scan(/.{1,#{2}}/)
  # baseArr.map { |str| str.hex }
  
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  # ints = []
  # [r, g, b].each do |s|
  #   ints << s.hex
  # end
  [r, g, b].map { |s| s.hex }
  
  # 多重代入を使うパターン
  # r,g,b = hex.[1..2], hex[3..4], hex[5..6]
  
  # mapの後ろは&:を使っても良い
  # [r, g, b].map(&:hex)
end