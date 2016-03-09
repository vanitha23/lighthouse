def fibonacci(running_time)
  running_time = 0
  start_time = Time.now
  fibonacci(200)
  end_time = Time.now
  running_time = end_time - start_time
#end
  puts "fibonacci(200) took #{running_time} seconds."
end