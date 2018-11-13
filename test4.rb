#-----------------------------
#メロンパン  :430kcal
#スパゲティ  :720kcal
#バナナ  :80kcal
#-----------------------------
#カロリー合計  :1230kcal


number = 0
total_kcal = 0
hash = {}

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  number = gets.to_i
  
    if number == 0
      puts "料理名を入力してください:"
      menu = gets.chomp
      
      puts "カロリーを入力してください:"
      kcal = gets.to_i
      
      hash["#{menu}"] = kcal
      
    elsif number == 1
      puts "-----------------------------"
      
      hash.each do |menu_list,kcal_list|
        puts "#{menu_list}  :#{kcal_list}kcal"
      end
      
      puts "-----------------------------"
      puts "カロリー合計  :#{hash.values.inject(:+)}kcal"
      exit
    else
      puts "0か1を入力してください"
    end
end


