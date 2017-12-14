class PeopleController < ApplicationController

  def index
    @person= Person.all
  end
  def show
      @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to @person
  end

  private
    def person_params
        params.require(:person).permit(:name,:user_id,:birth_date,:home_address,:ninja_rank,:username,:user_type,:email)
    end

end
