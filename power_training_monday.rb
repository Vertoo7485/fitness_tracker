# Класс для тренировки груди и трицепса по понедельникам
require_relative 'post'
class PowerTrainingMonday < Post

  def initialize
    super
    @training_monday = -2
    puts "Жим штанги: на 8 раз"
    @user_barbell_bench_press = gets.to_f
    puts "Жим гантелей: на 8 раз"
    @user_press_dumbbells = gets.to_f
    puts "Разведение гантелей: на 8 раз"
    @user_dumbbell_breeding = gets.to_f
    puts "Жим в кроссовере: на 8 раз"
    @user_crossover = gets.to_f
    @user_push_ups_on_bars = 2.5
    puts "Французский жим со штангой: на 8 раз"
    @user_french_press = gets.to_f
    puts "Разгибания канатной рукояти: на 8 раз"
    @user_extension_with_rope_handle = gets.to_f
  end
# Прогрессия нагрузок для тренировок
  def pump(muscle)
    case muscle
    when "user_barbell_bench_press"
      @user_barbell_bench_press *= 1.05
    when "user_press_dumbbells"
      @user_press_dumbbells *= 1.05
    when "user_dumbbell_breeding"
      @user_dumbbell_breeding *= 1.05
    when "user_crossover"
      @user_crossover *= 1.05
    when "user_push_ups_on_bars"
      @user_push_ups_on_bars *= 1.05
    when "user_french_press"
      @user_french_press *= 1.05
    when "user_extension_with_rope_handle"
      @user_extension_with_rope_handle *= 1.05
    end
  end
# Счетчик тренировок и кол-ва повторений для дальнейшего увеличения в цикле основной программы

  def train
    file = File.new(file_path, 'a:UTF-8')
    file.print("\n" + "Тренировка № #{@training_monday += 3}")
    file.puts("\n" + "4 сета по #{@reps += 1} раз" + "\n")
    file.close
  end
  # Фиксация кол-ва повторений и счетчик тренировок и для дальнейшего увеличения в цикле основной программы

  def trainfix
    file = File.new(file_path, 'a:UTF-8')
    file.puts("\n" + "Тренировка № #{@training_monday += 3}")
    file.puts("\n" + "4 сета по 8 раз" + "\n")
    file.close
  end
# Запись в файл
  def show
    file = File.new(file_path, 'a:UTF-8')
    file.puts("Жим лежа: #{@user_barbell_bench_press.round(1)} кг.")
    file.puts("Жим гантелей: #{@user_press_dumbbells.round(1)} кг.")
    file.puts("Разводка гентелей лежа: #{@user_dumbbell_breeding.round(1)} кг.")
    file.puts("Кроссовер: #{@user_crossover.round(1)} кг.")
    file.puts("Отжимания на брусьях: #{@user_push_ups_on_bars.round(1)} кг.")
    file.puts("Французский жим лежа: #{@user_french_press.round(1)} кг.")
    file.puts("Разгибания канатной рукояти #{@user_extension_with_rope_handle.round(1)} кг.")
    file.close
  end
end