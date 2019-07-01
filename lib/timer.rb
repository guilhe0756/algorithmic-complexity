class Timer

  def run
    time = Time.new
    print "Tests started at #{time}"
  end

  def stop
    time = Time.new
    print "Tests started at #{time}"
  end

  def timed_function(function)
    print function
  end

end
