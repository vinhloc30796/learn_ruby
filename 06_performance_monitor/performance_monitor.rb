require "time"

def measure(reps = 1)
    start = Time.now
    reps.times { yield }
    finish = Time.now
    return (finish - start) / reps
end