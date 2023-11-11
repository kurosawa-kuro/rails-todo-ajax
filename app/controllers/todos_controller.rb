class TodosController < ApplicationController
  def index
    @todo_new = Todo.new
    @todos = Todo.all
  end
 
  def create
    @todo_new = Todo.new(todos_params)
    @todo_new.save
    redirect_to root_path
  end
 
  def update
    @todo = Todo.find(params[:id])
    @todo.update(todos_params)
    redirect_to root_path
  end
 
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to root_path
  end

  def ajax_create
    @todo_new = Todo.new(todos_params)
    @todo_new.save
    @todos = Todo.all
  end
 
  private
 
  def todos_params
    params.require(:todo).permit(:title)
  end
end