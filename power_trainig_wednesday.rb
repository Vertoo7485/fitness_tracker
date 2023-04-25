# Класс для тренировки спины и бицепса по средам
require_relative 'post'
class PowerTrainingWednesday < Post

  def initialize
    super
    @training_wednesday = -1
    puts "Становая тяга: на 8 раз"
    @user_deadlift = gets.to_f
    puts "Горизонтальная тяга блока: на 8 раз"
    @user_horizontal_pull_block = gets.to_f
    @user_pull_ups = 2.5
    puts "Сгибания со штангой: на 8 раз"
    @user_barbell_curls = gets.to_f
    puts "Тяга гентелей в наклоне: на 8 раз"
    @user_incline_dumbbell_row = gets.to_f
    puts "Отведения в бабочке: на 8 раз"
    @user_abduction_butterfly = gets.to_f
    @user_hyperextension = 5
    puts "Сгибания предплечий на скамье Скотта: на 8 раз"
    @scott_dumbbell_curls = gets.to_f
  end
# Прогрессия нагрузок для тренировок
  def pump(muscle)
    case muscle
    when "user_deadlift"
      @user_deadlift *= 1.05
    when "user_horizontal_pull_block"
      @user_horizontal_pull_block *= 1.05
    when "user_pull_ups"
      @user_pull_ups *= 1.05
    when "user_barbell_curls"
      @user_barbell_curls *= 1.05
    when "user_incline_dumbbell_row"
      @user_incline_dumbbell_row *= 1.05
    when "user_abduction_butterfly"
      @user_abduction_butterfly *= 1.05
    when "user_hyperextension"
      @user_hyperextension *= 1.05
    when "scott_dumbbell_curls"
      @scott_dumbbell_curls *= 1.05
    end
  end
# Счетчик тренировок и кол-ва повторений для дальнейшего увеличения в цикле основной программы

  def train
    file = File.new(file_path, 'a:UTF-8')
    file.print("\n" + "Тренировка № #{@training_wednesday += 3}")
    file.print("\n" + "4 сета по #{@reps += 1} раз" + "\n")
    file.close
  end

  # Фиксация кол-ва повторений и счетчик тренировок и для дальнейшего увеличения в цикле основной программы
  def trainfix
    file = File.new(file_path, 'a:UTF-8')
    file.puts("\n" + "Тренировка № #{@training_wednesday += 3}")
    file.puts("\n" + "4 сета по 8 раз" + "\n")
    file.close
  end
# Запись в файл
  def show
    file = File.new(file_path, 'a:UTF-8')
    file.puts("Становая тяга: #{@user_deadlift.round(1)} кг.")
    file.puts("Горизонтальная тяга блока: #{@user_horizontal_pull_block.round(1)} кг.")
    file.puts("Подтягивания: #{@user_pull_ups.round(1)} кг.")
    file.puts("Сгибания со штангой: #{@user_barbell_curls.round(1)} кг.")
    file.puts("Тяга гентелей в наклоне: #{@user_incline_dumbbell_row.round(1)} кг.")
    file.puts("Отведения в бабочке: #{@user_abduction_butterfly.round(1)} кг.")
    file.puts("Гиперэкстензия: #{@user_hyperextension.round(1)} кг.")
    file.puts("Сгибания предплечий на скамье Скотта: #{@scott_dumbbell_curls.round(1)} кг.")
    file.close
  end
end