class PeopleController < ApplicationController
# this is a controller call back to make the code DRY
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  #after_action a method the controller runs after the CRUD stuff
#method to tell us what to do at index
# GET to get all records
  def index
    @people = Person.all #this function calls selects all from people in the people database
    # one of two things we need to do in ruby, render code or redirect, making a views page of the index.html.erb, has to be a file that can be rendered
    #render
    #redirect
  end

  #adding differen things useres can do
  #shows lets us see a single person, not just all, a get request to get one person
  #GET to get one record
  def show
    #SQL code below in this method
    #SELECT *
    #FROM people
    #WHERE people.id = 7
    #LIMIT 1
    #from people where people.id = 7, linit 1 the find method sets the limit of 1
  end
# a get request to submit a new person
# GET to get HTML form for a new record
  def new
    @person = Person.new #will create a blank person in memory but it will not have an id nor will it save it in memory
    @term = 'Add Person'
    render partial: 'form' #this will send it to the form page
  end
#POST to add record to the database
  def create
    @person = Person.new(person_params)
      if @person.save
        redirect_to :root
      else
        render :new
      end
    #next we say where to send them to
 #could also say :root which equals root_path
  end
  #GET to get HTML form for existing record
  def edit
    @term = 'Edit Person'
    render partial: 'form'
  end
  #PUT update existing record in database
  def update
    if @person.update(person_params) #render code
      redirect_to person_path(@person)
    else
      render partial: 'form'
    end       # redirect code
  end

  #DELETE to remove record from database
  def destroy
    @person.destroy
    redirect_to :root
  end

# these are the methods called before each action above
private
  def person_params
    params.require(:person).permit(:first_name, :last_name, :age)
  end

  def set_person
    @person = Person.find(params[:id])
  end
end
