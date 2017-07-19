class Player
  def initialize(name)
    @name = name
  end 
end

# 人類玩家的類別
class Human < Player
  def get_gesture
    input = gets.chomp.upcase
  end
end

# 電腦的類別
class Computer < Player
  def get_gesture
  	input = ['R', 'P', 'S'].shuffle!.last
  end
end

class RPS
  def intro
    #印出開場畫面，告訴玩家遊戲規則
    puts "|===============================================|"
    puts "|剪刀、石頭、布遊戲                             |"
    puts "|===============================================|"

    puts "請輸入您的名字："
    @name=gets.chomp.upcase
  end

  def decide
    #邏輯判斷式
    if @user_input == @computer_input
        puts "平手"
    else
        case @user_input 
        when "S" then puts (@computer_input == "R") ? + @name + " 出剪刀(S)，電腦出石頭(R)，電腦贏！" : + @name + " 出剪刀(S)，電腦出布(P)， " + @name + " 贏！"
        when "R" then puts (@computer_input == "P") ? + @name + " 出石頭(R)，電腦出布(P)，電腦贏！" : + @name + " 出石頭(R)，電腦出剪刀(S)， " + @name + " 贏！" 
        when "P" then puts (@computer_input == "S") ? + @name + " 出布(P)，電腦出剪刀(S)，電腦贏！" : + @name + " 出布(P)，電腦出石頭(R)， " + @name + " 贏！"
        end
    end  end

  def get_player_gestures
    #取得玩家和電腦兩個物件的
    puts @name+" 的選擇：剪刀(S)、石頭(R)、布(P)"
    human = Human.new(@name)
    @user_input = human.get_gesture
    computer = Computer.new(computer)
    @computer_input = computer.get_gesture
  end

  def continue?
    #判斷玩家是否要繼續下一輪
    begin
        puts "繼續玩?: 是(Y) / 否(N)"
        continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)
    continue
  end

  def show_message
    #印出結果
    puts "謝謝 " + @name + " ，再見！"
  end

  def initialize
    intro
    begin
        puts ""
        get_player_gestures
        decide
        continue = continue?
    end while continue == "Y"
    show_message
  end
end

# ------------Main Program Starts Here ---------------------
# 主程式只要一行即可
game = RPS.new