begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "請輸入: R / P / S"
    user_input = gets.chomp.upcase
    if !["R", "P", "S"].include?(user_input)
        puts "please type correct word"
    end
  end while !["R", "P", "S"].include?(user_input) 

 computer = ["R" , "P" , "S"].sample

  hash = {
      "S"=>"P",
      "P"=>"R",
      "R"=>"S"
  }


  if hash[user_input] == computer
        puts "you win"
    elsif hash[user_input] == computer
        puts "computer win"
    else 
        puts "draw"

  end

  puts "你出#{user_input},電腦出#{computer}" 



  begin
    puts 'Play Again?: Y / N'
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == 'Y'
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts 'Good Bye! Thanks for playing!'