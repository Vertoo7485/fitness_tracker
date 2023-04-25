# Основная программа, в которой будет идти увеличение нагрузок
require_relative 'user'
require_relative 'power_training_monday'
require_relative 'power_trainig_wednesday'
require_relative 'power_training_friday'
user = User.new
monday = PowerTrainingMonday.new
wednesday = PowerTrainingWednesday.new
friday = PowerTrainingFriday.new

user.show
reps = 8

12.times do
  reps += 1
  if reps <= 12
  monday.train
  monday.show
  wednesday.train
  wednesday.show
  friday.train
  friday.show
  else
    monday.trainfix
    monday.pump("user_barbell_bench_press")
    monday.pump("user_press_dumbbells")
    monday.pump("user_dumbbell_breeding")
    monday.pump("user_crossover")
    monday.pump("user_push_ups_on_bars")
    monday.pump("user_french_press")
    monday.pump("user_extension_with_rope_handle")
    monday.show
    wednesday.trainfix
    wednesday.pump("user_deadlift")
    wednesday.pump("user_horizontal_pull_block")
    wednesday.pump("user_pull_ups")
    wednesday.pump("user_barbell_curls")
    wednesday.pump("user_incline_dumbbell_row")
    wednesday.pump("user_abduction_butterfly")
    wednesday.pump("user_hyperextension")
    wednesday.pump("scott_dumbbell_curls")
    wednesday.show
    friday.trainfix
    friday.pump("user_squats_gack")
    friday.pump("user_leg_extension")
    friday.pump("user_leg_press")
    friday.pump("user_lunges_with_dumbbells")
    friday.pump("user_seated_dumbbell_press")
    friday.pump("user_lying_leg_flexion")
    friday.pump("user_cross_over_lead")
    friday.show
  end
end