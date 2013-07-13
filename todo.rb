require_relative 'config/application'
require_relative 'app/controllers/controller.rb'
require_relative 'app/models/task.rb'

controller = TaskController.new

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
