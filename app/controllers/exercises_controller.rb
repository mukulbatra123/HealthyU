class ExercisesController < ApplicationController
    def index

        @exercises = Exercise.find :all
    end
    def show
        @exercise = Exercise.find params[:id] #look up exercise by unique muscle id
    end
    def new
        @exercise = Exercise.new
    end
    def create
        @exercise = Exercise.create!(params[:exercise])
        flash[:notice] = "#{@exercise.muscle} was successfully created."
       # @exercise = Exercise.new params[:exercise]
        redirect_to exercises_path
=begin
        if @exercise.save
            redirect_to :action => 'show', :id => @exercise.id
        else
            render :action => 'new'
        end
=end
    end
    
    def destroy
        @exercise = Exercise.find params[:id]
        @exercise.destroy
        flash[:notice] = "Exercise '#{@exercise.muscle}' deleted."
        redirect_to exercises_path
    end
    def edit
        @exercise = Exercise.find params[:id]
    end
    
    def update
        @exercise = Exercise.find params[:id]
        @exercise.update_attributes!(params[:exercise])
        flash[:notice] = "#{@exercise.muscle} was successfully updated."
        redirect_to exercise_path(@exercise)
           # redirect_to :action => 'show', :id => @exercise.id

    end
end