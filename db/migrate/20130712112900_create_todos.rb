
# this is where you should use an ActiveRecord migration to 

class CreateTodos < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :todos do |t|
      t.string :task
      t.integer :completed
    end
  end
end
