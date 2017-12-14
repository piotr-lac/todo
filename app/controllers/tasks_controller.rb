class TasksController < ApplicationController
	
	def index
		@tasks= Task.all.reverse
		
	end

	def new
		@task = Task.new
	end

	def show
		@task = Task.find(params[:id])
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			flash[:notice] = "Zadanie utworzono"
			redirect_to task_path(@task)
		else
			render 'new'
		end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if @task.update(task_params)
			flash[:notice] = "Zadanie edytowano"
			redirect_to tasks_path
		else
			render 'edit'
		end
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		flash[:notice] = "Zadanie skasowano"
		redirect_to tasks_path
	end


	def task_params
		params.require(:task).permit(:zadanie, :opis_zadania)
	end



end
