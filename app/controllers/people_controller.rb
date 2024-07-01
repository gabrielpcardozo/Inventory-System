class PeopleController < ApplicationController
  def index
    @people = Person.where(type: nil)
    @employee = Employee.all
    @client = Client.all
  end

  def new
    @person = Person.new
    @employee = Employee.new
    @client = Client.new
  end

  def create
    @person = Person.new(person_params)
    
    if @person.save
      redirect_to people_path, notice: "Person was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      redirect_to person_path(@person), notice: "Person was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path, status: :see_other
  end

  def show
    @person = Person.find(params[:id])
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :email, :type, :employee_id)
  end
end