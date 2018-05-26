class TodosController < ApplicationController
    def show
        todo = Todo.find(params[:id])
        render json:todo, status: 200
    
    end
    
    def create
        todo = Todo.new(todo_params)
        if todo.save
            reder json: todo,atatus:201
        end
    end
        
    def todo_params
        params.require(:todo).permit(:name,:desciption,:duration,)
    end
end
