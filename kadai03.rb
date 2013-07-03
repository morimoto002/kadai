# FizzBuzz問題
# 1から100まで数えて、3の倍数でFizz、5の倍数でBuzz、両方で割り切れる場合はFizzBuzz
# 割り切れない数字はその数字を返すプログラム

1.upto(100) {|num|
  if !(num == 1)
    print ","
  end
  if (num % 3 == 0 && num % 5 == 0)
    print "FizzBuzz"
  elsif (num % 3 == 0)
    print "Fizz"
  elsif (num % 5 == 0)
    print "Buzz"
  else
    print num
  end
} 
puts ""

# 行数省略Ver
1.upto(100){|num|
  print (num == 1 && "") || (num == 1 || ",")
  print ((num % 15 == 0 && "FizzBuzz") || 
    (num % 3 == 0 && "Fizz") || (num % 5 == 0 && "Buzz") || num)
}
puts ""
