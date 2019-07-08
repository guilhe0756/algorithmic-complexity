class Timer

  def initialize
    @timed_function
    @start_time
  end

  def run
    @start_time = Time.new
  end

  def stop
    time = Time.new
    #time is display with minute:second:microsecond (6 digits)
    puts "Tests started at #{@start_time.strftime("%M:%S,%6N")}"
    puts "Tests stoped at #{time.strftime("%M:%S,%6N")}"
  end

  def last(data)
    data[-1]
  end

  def reverse(data)
    reversed_data = []
    until data.count == 0 do
      reversed_data << data.pop
    end
    reversed_data
  end

  def shuffle(data)
    shuffled_array = []
    until data.count == 0 do
      random_number = rand(0..data.count - 1)
      random_element = data.delete_at(random_number)
        shuffled_array << random_element
    end

    if shuffled_array != data
      shuffled_array
    else
      shuffle(data)
    end
  end

  def timed_function(function_name)
    @timed_function = function_name
    puts "The timed function was #{@timed_function}"
  end

end
