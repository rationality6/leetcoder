require 'time'

epoch_time = 1603814215
date_time = Time.at(epoch_time).to_datetime()
p date_time.strftime("%a %b %d %I:%M:%S %p")

