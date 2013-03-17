puts "in my riby script"
status = `git status`
branch = /# On Branch (\w+)/.match(status)
puts "Branch is #{branch}"

puts `echo a random string #{rand(100)} >> c3.txt`
puts `git commit -a -m "adding a item to c3.txt and going to promote"`
puts `git push origin dev`
