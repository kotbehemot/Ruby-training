def func1
   i=0
   while i<=2
      puts "func1 at: #{Time.now}"
      sleep(2)
      i+=1
   end
end

def func2
   j=0
   while j<=2
      puts "func2 at: #{Time.now}"
      sleep(1)
      j+=1
   end
end

puts "Started At #{Time.now}"
t1=Thread.new do
   func1()
end
t2=Thread.new do
   func2()
end
t1.join
t2.join
puts "End at #{Time.now}"


# Thread.abort_on_exception
# Returns the status of the global abort on exception condition. The default is false. When set to true, will cause all threads to abort (the process will exit(0)) if an exception is raised in any thread.

# Thread.abort_on_exception=
# When set to true, all threads will abort if an exception is raised. Returns the new state.

# Thread.critical
# Returns the status of the global thread critical condition.

# Thread.critical=
# Sets the status of the global thread critical condition and returns it. When set to true, prohibits scheduling of any existing thread. Does not block new threads from being created and run. Certain thread operations (such as stopping or killing a thread, sleeping in the current thread, and raising an exception) may cause a thread to be scheduled even when in a critical section.

# Thread.current
# Returns the currently executing thread.

# Thread.exit
# Terminates the currently running thread and schedules another thread to be run. If this thread is already marked to be killed, exit returns the Thread. If this is the main thread, or the last thread, exit the process.

# Thread.fork { block }
# Synonym for Thread.new .

# Thread.kill( aThread )
# Causes the given aThread to exit

# Thread.list
# Returns an array of Thread objects for all threads that are either runnable or stopped.ń

# Thread.main
# Returns the main thread for the process.

# Thread.pass
# Invokes the thread scheduler to pass execution to another thread.

