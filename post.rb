# Основной класс для записи в файл
class Post

  def initialize
    @time = Time.now
    @reps = 8
  end

  def show
    file = File.new(file_path, 'a:UTF-8')
    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = "План питания и тренировок #{@time.strftime("%d-%m-%Y")}.txt"
    current_path + "/" + file_name
  end
end