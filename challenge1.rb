puts <<~TEXT
       旅行プランを選択して下さい。
        1. 沖縄旅行（10000円）
        2. 北海道旅行（20000円）
        3. 九州旅行（15000円）
     TEXT

while true
  print "プランの番号を選択 > "
  choose_plan = gets.to_i
  break if (1..3).include?(choose_plan)
  puts "1〜3の番号を入力して下さい。"
end

case choose_plan
when 1
  place = "沖縄旅行"
  price = 10000
when 2
  place = "北海道旅行"
  price = 20000
when 3
  place = "九州旅行"
  price = 15000
end

puts "#{place}ですね"

puts "何名で予約されますか？"
puts "人数を入力 >"
while true
  numbers = gets.to_i
  if numbers < 1
    puts "1以上を入力して下さい。"
  else
    break
  end
end

puts "#{numbers}名ですね >"
total_amount = (numbers * price)

if numbers >= 5
  puts "5名以上ですので10%割引となります。"
  total_amount *= 0.9
else
end
floor_total_amount = total_amount.floor
puts "合計料金は#{floor_total_amount}円です。"
