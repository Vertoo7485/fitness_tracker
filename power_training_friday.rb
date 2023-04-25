# Класс для тренировки ног и плечей по пятницам
require_relative 'post'
class PowerTrainingFriday < Post

  def initialize
    super
    @training_friday = 0
    puts "Приседания в Гакк тренажере: на 8 раз"
    @user_squats_gack = gets.to_f
    puts "Разгибания голени сидя: на 8 раз"
    @user_leg_extension = gets.to_f
    puts "Жим ногами: на 8 раз"
    @user_leg_press = gets.to_f
    puts "Выпады с гантелями: на 8 раз"
    @user_lunges_with_dumbbells = gets.to_f
    puts "Жим гантелей сидя: на 8 раз"
    @user_seated_dumbbell_press = gets.to_f
    puts "Сгибания голени лежа: на 8 раз"
    @user_lying_leg_flexion = gets.to_f
    puts "Поочередное отведение с троссом в кросс-овере: на 8 раз"
    @user_cross_over_lead = gets.to_f
    puts "Поздравляю! План питания и тренировок уже составлен. Скорее смотрите его!"
  end
# Прогрессия нагрузок для тренировок

  def pump(muscle)
    case muscle
    when "user_squats_gack"
      @user_squats_gack *= 1.05
    when "user_leg_extension"
      @user_leg_extension *= 1.05
    when "user_leg_press"
      @user_leg_press *= 1.05
    when "user_lunges_with_dumbbells"
      @user_lunges_with_dumbbells *= 1.05
    when "user_seated_dumbbell_press"
      @user_seated_dumbbell_press *= 1.05
    when "user_lying_leg_flexion"
      @user_lying_leg_flexion *= 1.05
    when "user_cross_over_lead"
      @user_cross_over_lead *= 1.05
    end
  end
  # Счетчик тренировок и кол-ва повторений для дальнейшего увеличения в цикле основной программы

  def train
    file = File.new(file_path, 'a:UTF-8')
    file.puts("\n" + "Тренировка № #{@training_friday += 3}")
    file.puts("\n" + "4 сета по #{@reps += 1} раз" + "\n")
    file.close
  end
  # Фиксация кол-ва повторений и счетчик тренировок и для дальнейшего увеличения в цикле основной программы

  def trainfix
    file = File.new(file_path, 'a:UTF-8')
    file.puts("\n" + "Тренировка № #{@training_friday += 3}")
    file.puts("\n" + "4 сета по 8 раз" + "\n")
    file.close
  end
# Запись в файл
  def show
    file = File.new(file_path, 'a:UTF-8')
    file.puts("Приседания в Гакк тренажере: #{@user_squats_gack.round(1)} кг.")
    file.puts("Разгибания голени сидя: #{@user_leg_extension.round(1)} кг.")
    file.puts("Жим ногами: #{@user_leg_press.round(1)} кг.")
    file.puts("Выпады с гантелями: #{@user_lunges_with_dumbbells.round(1)} кг.")
    file.puts("Жим гантелей сидя: #{@user_seated_dumbbell_press.round(1)} кг.")
    file.puts("Сгибания голени лежа: #{@user_lying_leg_flexion.round(1)} кг.")
    file.puts("Поочередное отведение с троссом в кросс-овере: #{@user_cross_over_lead.round(1)} кг.")
    file.close
  end
end