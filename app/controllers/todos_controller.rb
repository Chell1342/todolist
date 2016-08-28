class TodosController < ApplicationController
  before_action :require_login

  def new
  end

  def create
    @todo = Todo.new(todo_params)

    @todo.save
    redirect_to todos_path
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def index
    @todos = Todo.all
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      redirect_to @todo
    else
      render 'edit'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todos_path
  end


  private
    def todo_params
      params.require(:todo).permit(:text)
    end

end
