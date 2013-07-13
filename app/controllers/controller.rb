
module TaskViewer

  def show(todo)
    puts "#{todo.id}: #{todo.description}"
  end

end


class TaskController

  def initialize
  end

  def add(description)
    Task.create(description: description)
  end

  def list
    tasklist = Task.all.to_a # => Array
    tasklist.each_with_index do |task, i|
      puts "#{i + 1}. #{task.description}"
    end
  end

  def delete(id)
    Task.destroy(id)
  end

end