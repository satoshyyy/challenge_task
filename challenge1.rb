puts "旅行プランを選択して下さい。"

travels = [
  { name: "北海道", price: 20000 },
  { name: "沖縄", price: 10000 },
  { name: "九州", price: 15000 },
]

travels.each.with_index(1) do |travel, i|
  puts "#{i}. #{travel[:name]}旅行 #{travel[:price]}円"
end

puts "プランの番号を選択 >"
choose_plan = gets.to_i
#puts "#{choose_plan}"

case choose_plan
when 1
  puts "#{travels[0][:name]}旅行ですね"
  price = 20000
when 2
  puts "#{travels[1][:name]}旅行ですね"
  price = 10000
when 3
  puts "#{travels[2][:name]}旅行ですね"
  price = 15000
else
  puts "1〜3の番号を入力して下さい。"
end

puts "何名で予約されますか？ >"
numbers = gets.to_i
total_amount = (numbers * price)

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
