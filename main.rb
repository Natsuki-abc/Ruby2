
puts "じゃんけん..."
@result = ""

def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i
    puts "ホイ！"

    puts "------------------"

    if player_hand == 3
        puts "終了します"
        exit
    end

    program_hand = rand(3)
    jankens = ["グー", "チョキ", "パー"]
    puts "あなた：#{jankens[player_hand]}を出しました"
    puts "相手：#{jankens[program_hand]}を出しました"

    puts "------------------"

    if player_hand == program_hand
        puts "あいこで..."
        janken

    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
        @result = "勝ち"
        puts "あなたの勝ちです"
        puts "------------------"
        attimuite

    else
        @result = "負け"
        puts "あなたの負けです"
        puts "------------------"
        attimuite
    end
end

def attimuite
    puts "あっちむいて..."
    puts "0(上)1(下)2(左)3(右)"
    player = gets.to_i
    puts "ホイ！"

    puts "------------------"

    program = rand(4)
    attimuites = ["上", "下", "左", "右"]
    puts "あなた：#{attimuites[player]}"
    puts "相手：#{attimuites[program]}"

    puts "------------------"

    if (player == program) && (@result == "勝ち")
        puts "あなたの勝利です"
    elsif (player == program) && (@result == "負け")
        puts "残念。相手の勝利です"
    else
        puts "じゃんけん..."
        janken
    end

end

janken
