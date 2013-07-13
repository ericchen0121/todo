controller = TaskController.new

# ruby ... list
if ARGV[0] == 'list'
  controller.list
end

module TaskViewer

  def show(todo)
    puts "#{todo.id}: #{todo.description}"
  end

end


class TaskController

  def add(description)
    Task.create(description: description)
  end

  def list
    tasklist = Task.all.to_a # => Array
    tasklist.each do |task|
      puts "#{task.id}. #{task.description}"
    end
  end

  def delete(id)
    Task.destroy(id)
  end

end