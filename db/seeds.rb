food_list = [
  [ "Toast", 20 ],
  [ "Lasagna", 250 ],
  [ "Oatmeal", 50 ],
  [ "Fruit", 25 ],
  [ "Peanut Butter", 20],
  [ "Sandwich", 500]
]

food_list.each do |name, calorie|
  Food.create(name: name, calories: calorie )
end

exercise_list = [
  [ "Bike", 20 ],
  [ "Run", 250 ],
  [ "Tennis", 50 ],
  [ "Ping-Pong", 25 ],
  [ "Walking", 20],
  [ "Ice Skatin", 500]
]

exercise_list.each do |name, calorie|
  Exercise.create(name: name, calories: calorie )
end


