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
    puts "Tests started at #{@start_time.nsec}"
    puts "Tests stoped at #{time.nsec}"
  end

  def timed_function(function_name)
    @timed_function = function_name
    puts "The timed function was #{@timed_function}"
  end

end
