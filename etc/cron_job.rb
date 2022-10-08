require 'clockwork'
include Clockwork

handler do |job|
  puts "Running #{job}"
end

every(10.seconds, 'frequent.job')

every(1.day, 'midnight.job', :at => '00:00')


p 100 > 101

p (100 * 0.05).round