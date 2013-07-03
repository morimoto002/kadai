# -*- encoding: UTF-8 -*-
=begin
  うるう年の計算を行うプログラム
  ・入力されたものが文字か数字かを調べ、
　　数字であれば西暦とみなしうるう年かどうかの判定を行う。
　・マイナスの数字が入る場合は西暦外とみなす。
　・文字が入力された場合はエラーを返し、うるう年かどうかの判定は行わない。
=end

# うるう年計算/表示用
class LeapYear
  def LeapYear.toLeap(year)
    if(year == 0)
      print "うるう年ではありません\n"
    elsif(year < 0)
      print "西暦外です\n"
    elsif(year % 400 == 0)
      print "うるう年です\n"
    elsif(year % 4 == 0 && !(year % 100 == 0))
      print "うるう年です\n"
    else
      print "うるう年ではありません\n"
    end
  end
end

# 入力された文字が数字に変換可能か判定し、可能な場合は変換して返すクラス
class NumCheck
  def integerString(str)
    Integer(str)
    true
  rescue ArgumentError
    print "error\n"
    false
  end

  def boolNumber(str)
    booleanNum = integerString(str)
    if(booleanNum == true)
      return str.to_i
    else
      false
    end
  end
end

print "year = " 
getMonth = gets.chop
check = NumCheck.new
month = check.boolNumber(getMonth)
# 変換不可能でなければうるう年判定を行う
if !(month == false)
  LeapYear.toLeap(month)
end
