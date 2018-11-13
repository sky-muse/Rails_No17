#-----------------------------
#メロンパン  :430kcal
#スパゲティ  :720kcal
#バナナ  :80kcal
#-----------------------------
#カロリー合計  :1230kcal

class Food
  
  number = 0
  total_kcal = 0
  hash = {}
  
  def self.input(hash)
        puts "料理名を入力してください:"
        menu = gets.chomp

        puts "カロリーを入力してください:"
        kcal = gets.to_i

        hash["#{menu}"] = kcal
  end
  
  def self.show_all_calory(hash)
      puts "-----------------------------"

      hash.each do |menu_list,kcal_list|
        puts "#{menu_list}  :#{kcal_list}kcal"
      end

      puts "-----------------------------"
      puts "カロリー合計  :#{hash.values.inject(:+)}kcal"
  end
  
  while true do
    puts "[0]:カロリーを入力する"
    puts "[1]:カロリーの合計を見る"
    number = gets.to_i

      if number == 0
        Food.input(hash)

      elsif number == 1
        Food.show_all_calory(hash)
        exit
      else
        puts "0か1を入力してください"
      end
  end
end

