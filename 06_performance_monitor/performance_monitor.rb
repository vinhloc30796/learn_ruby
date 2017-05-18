require "time"

def measure(reps = 1)
    duration_list = []
    start = Time.now
    reps.times { yield }
    finish = Time.now
    duration_list << finish - start
    return duration_list.reduce(:+) / reps
end