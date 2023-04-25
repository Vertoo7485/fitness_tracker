# Класс для сбора информации о пользователе и дальнейшем подсчете питания + нормы воды
require_relative 'post'
class User < Post

  def initialize
    super
    puts "Добрый день! Я Ваш помощник в составлении плана питания и тренировок"
    puts "Для составления программы, Вам необходимо ответить на несколько вопросов"
    puts "Давайте же уже приступим:)"
    sleep 3
    puts "Напишите имя и фамилию"
    @user_name = gets.chomp
    puts "Напишите свой вес"
    @user_weight = gets.to_f
    puts "Теперь напишите свой рост"
    @user_growth = gets.to_i
    puts "Сколько вам лет?"
    @user_years = gets.to_i
    puts "Укажите пол
    1 - Мужской
    2 - Женский"
    @user_gender = gets.to_i
    puts "Какую диету вы хотите?
    1. Похудеть
    2. Набрать вес"
    @user_dietary = gets.to_i
    @men_basal_metabolism = 9.99 * @user_weight.to_i + 6.25 * @user_growth.to_i - 4.92 * @user_years.to_i + 5 # Подсчет базового обмена веществ для мужчин
    @men_daily_calorie_intake = (@men_basal_metabolism.to_i * 0.1 + @men_basal_metabolism) * 1.375 # Подсчет суточного потребления ккал для мужчин
    @men_weight_loss_diet = (@men_daily_calorie_intake.to_i - @men_daily_calorie_intake.to_i * 0.2) # Диета для похудения мужчинам
    @men_weight_gain_diet = (@men_daily_calorie_intake.to_i + @men_daily_calorie_intake * 0.1) # Диета для набора веса мужчинам
    @fem_basal_metabolism = 9.99 * @user_weight.to_i + 6.25 * @user_growth.to_i - 4.92 * @user_years.to_i - 161 # Подсчет базового обмена веществ для женщин
    @fem_daily_calorie_intake = (@fem_basal_metabolism.to_i * 0.1 + @fem_basal_metabolism) * 1.375 # Подсчет суточного потребления для женщин
    @fem_weight_loss_diet = (@fem_daily_calorie_intake.to_i - @fem_daily_calorie_intake.to_i * 0.2) # Диета для похудения женщинам
    @fem_weight_gain_diet = (@fem_daily_calorie_intake.to_i + @fem_daily_calorie_intake * 0.1) # Диета для набора веса женщинам
    puts "Для составления плана тренировок, мне нужны ваши изначальные параметры"
    puts "Потерпите, еще совсем чуть-чуть:)"
    sleep 3
  end

# Запись данных от пользователя в файл, в зависимости от его ответов
  def show
    file = File.new(file_path, 'a:UTF-8')
    file.print("Добро пожаловать, #{@user_name}!" + 
     "\n" + "Мы с вами уже проделали огромную работу и Вы молодец!" + 
     "\n" + "Ниже приведены рекомендации для вашей суточной каллорийности" + 
     "\n" + "Мы рекомендуем использовать приложение FatSecret для подсчета каллорий" + 
     "\n" + "И да, это не реклама, к сожалению:(" +
     "\n" + "Программа тренировок, рассчитана на 3 месяца" + "\n" + "\n")

    if @user_gender == 1 && @user_dietary == 1
      file.puts("Суточное потребление ккал составляет: #{@men_weight_loss_diet.to_i} ккал")
      file.puts("Суточное потребление воды составляет: #{((@user_weight.to_i * 35) / 1000.to_f).round(1)} литра \n")
    elsif @user_gender == 1 && @user_dietary == 2
      file.puts("Суточное потребление ккал составляет: #{@men_weight_gain_diet.to_i} ккал")
      file.puts("Суточное потребление воды составляет: #{((@user_weight.to_i * 35) / 1000.to_f).round(1)} литра \n")
    elsif @user_gender == 2 && @user_dietary == 1
      file.puts("Суточное потребление ккал составляет: #{@fem_weight_loss_diet.to_i} ккал")
      file.puts("Суточное потребление воды составляет: #{((@user_weight.to_i * 31) / 1000.to_f).round(1)} литра \n")
    elsif @user_gender == 2 && @user_dietary == 2
      file.puts("Суточное потребление ккал составляет: #{@fem_weight_gain_diet.to_i} ккал")
      file.puts("Суточное потребление воды составляет: #{((@user_weight.to_i * 31) / 1000.to_f).round(1)} литра \n")
    end
    file.close
  end
end