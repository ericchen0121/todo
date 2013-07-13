require_relative 'config/application'
require_relative 'app/controllers/controller.rb'
require_relative 'app/models/task.rb'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

controller = TaskController.new

# ruby ... list
if ARGV[0] == 'list'
  controller.list
elsif ARGV[0] == 'add'
  if ARGV[1]
    controller.add(ARGV[1])
  else
    puts "Nothing to add"
  end
  controller.list
elsif ARGV[0] == 'delete'
  controller.delete(ARGV[1])
  controller.list
end
