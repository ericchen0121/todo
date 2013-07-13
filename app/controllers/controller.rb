module TaskViewer

  def show(todo)
    puts "#{todo.id}: #{todo.description}"
  end

end


class TaskController

  def add(description)
    Task.create(description: description)
  end
  
end