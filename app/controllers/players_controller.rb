class PlayersController < ApplicationController
  # GET /players
  def index
    @players = Player.all
  end

  def schedule
    @player = Player.find(params[:id])
    @fixtures = Fixture.all_upcoming
  end

  # POST
  def scheduled
    @player = Player.find(params[:id])
    params[:fixtures].each { |fixture_id, will|
      attendances = Attendance.where('player_id = ? AND fixture_id = ?', @player.id, fixture_id)
    
      if attendances.empty?
        attendance = Attendance.new({:player_id => @player.id, :fixture_id => fixture_id})
      else
        attendance = attendances[0]
      end
      attendance.will = will
      attendance.save!
    }
  
    redirect_to '/', notice: 'Schedule saved.'
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  def create
    @player = Player.new(params[:player])

    if @player.save
      redirect_to '/', notice: 'Player was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /players/1
  def update
    @player = Player.find(params[:id])

    if @player.update_attributes(params[:player])
      redirect_to '/', notice: 'Player was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /players/1
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    redirect_to '/'
  end
end
