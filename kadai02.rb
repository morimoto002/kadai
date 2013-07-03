# -*- encoding: utf-8 -*-

=begin
 じゃんけんを行うプログラム
  ・ユーザはグー、チョキ、パーのいずれかの指示を行う。
  ・指示外の文字が入力された場合は再入力を促す。
  ・CPUの手をランダムで生成し、指示された手との評価を行う。
　・あいこであれば指示からの再入力を促す。
=end

class Game
# じゃんけんの手の勝敗判定
  def judge(user, cpu)
    if ((user == 1 && cpu == 2) || (user == 2 && cpu == 3) || (user == 3 && cpu == 1))
      print "あなたの勝ちです\n"
    else
      print "あなたの負けです\n"
    end
  end

# じゃんけんの手を勝敗判定用数値に変換
  def handJadge(user)
    if (user == "グー")
      hand = 1
    elsif (user == "チョキ")
      hand = 2
    elsif (user == "パー")
      hand = 3
    else
      false
    end
  end

  def cpuHandDec(cpu)
    if (cpu == 1)
      print "グー\n"
    elsif (cpu == 2)
      print "チョキ\n"
    elsif (cpu == 3)
      print "パー\n"
    else
     false
    end
  end
end

puts "じゃんけん！"
# 1回のループを作成し、入力ミスとあいこでもう再度入力から
1.times{
  game = Game.new
  print "グー チョキ パー？ = "
  userHand = gets.chop
  handNum = game.handJadge(userHand)
# 入力ミスチェックと数値変換
  if (handNum == false)
    puts "input error"
    redo
  end
# CPUの手をランダムで作成
  cpuHand = rand(3)+1 
  print "CPU = "
  game.cpuHandDec(cpuHand)
# 勝敗判定（あいこの場合はもう一度）
  if (handNum == cpuHand)
    puts "あいこで"
    redo
  else
    game.judge(handNum, cpuHand)
  end
}
