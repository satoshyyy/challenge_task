def display(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:place]}旅行,#{plan[:price]}円)"
  end
end

def choose_plan(plans)
  while true
    puts "プランの番号を選択 >"
    plan_num = gets.to_i
    break if (1..3).include?(plan_num)
    puts "１〜３の番号を入力して下さい。"
  end
  plans[plan_num - 1]
end

def decide_members(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね"
  while true
    puts "何名で予約されますか？"
    puts "人数を入力 >"
    head_amount = gets.to_i
    break if head_amount >= 1 or head_amount.class == String
    puts "１以上を入力して下さい。"
  end
  head_amount
end

def total_amount(chosen_plan, head_amount)
  puts "#{head_amount}名ですね"
  total_price = chosen_plan[:price] * head_amount
  if head_amount >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
    puts "合計金額は#{total_price.floor}円になります。"
  else
    puts "合計金額は#{total_price.floor}円になります。"
  end
end
