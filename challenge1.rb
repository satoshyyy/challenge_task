puts <<~TEXT
       旅行プランを選択して下さい。
        1. 沖縄旅行（10000円）
        2. 北海道旅行（20000円）
        3. 九州旅行（15000円）
     TEXT

# コードを追記
while true
  print "プランの番号を選択 > "
  choose_plan = gets.to_i
  break if (1..3).include?(choose_plan)
  puts "1〜3の番号を入力して下さい。"
end

case choose_plan
when 1
  place = "沖縄旅行"
  price = 20000
when 2
  place = "北海道旅行"
  price = 10000
when 3
  place = "九州旅行"
  price = 15000
end

puts "#{place}ですね"

puts "何名で予約されますか？ >"
numbers = gets.to_i
total_amount = (numbers * price)
puts "#{numbers}名ですね >"

if numbers < 1
  puts "1以上を入力して下さい。"
elsif numbers >= 5
  puts "5名以上ですので10%割引となります >"
  total_amount *= 0.9
  float_amount = total_amount.floor
  puts "#合計料金は#{float_amount}円です"
else
  float_amount = total_amount.floor
  puts "合計料金は#{float_amount}円です"
end
