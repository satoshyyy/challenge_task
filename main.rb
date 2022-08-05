require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 },
]

display(plans)
chosen_plan = choose_plan(plans)
head_count = decide_members(chosen_plan)
total_amount(chosen_plan, head_count)
