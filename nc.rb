puts "in my riby script"
status = `git status`
puts "trying my match " 
branch = status.match(/On branch (\w+)/)[1]
puts "Branch is #{branch}"

puts `echo a random string #{rand(100)} >> #{branch}.txt`
puts `git add #{branch}.txt`
puts `git commit -a -m "adding a item to #{branch}.txt on branch #{branch} and going to promote"`
puts `git push origin #{branch}`
