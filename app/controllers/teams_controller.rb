class TeamsController < ApplicationController

  def index
    @team= Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @people = Person.all #recebemos todas as pessoas pra usar no select
    @chuninmais = Person.where('ninja_rank = ? or ninja_rank = ? or ninja_rank = ?', 'Chunin', 'Jounin', 'Hokage') #completa isso, dá uma olhada nesse formato ele faz um select no banco de dados com o parâmetro
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @people = Person.all
    team=team_params
    team[:person1_id]=Person.find(team_params[:person1_id])
    team[:person2_id]=Person.find(team_params[:person2_id])
    team[:person3_id]=Person.find(team_params[:person3_id])
    team[:personsuperior_id]=Person.find(team_params[:personsuperior_id])
    @team = Team.new(team)
    if @team.save
      redirect_to @team
    else
      render 'new'
    end

  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to @team
    else
      render 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to teams_path
  end


  private
  def team_params
    params.require(:team).permit(:name,:person1_id,:person2_id,:person3_id,:personsuperior_id)
  end


end