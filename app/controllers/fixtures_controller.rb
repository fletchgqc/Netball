class FixturesController < ApplicationController
  # GET /fixtures/new
  def new
    @fixture = Fixture.new
    @fixture.title = 'Training'
  end

  # GET /fixtures/1/edit
  def edit
    @fixture = Fixture.find(params[:id])
  end

  # POST /fixtures
  def create
    @fixture = Fixture.new(params[:fixture])

    if @fixture.save
      redirect_to '/', notice: 'Fixture was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /fixtures/1
  def update
    @fixture = Fixture.find(params[:id])

    if @fixture.update_attributes(params[:fixture])
      redirect_to '/', notice: 'Fixture was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /fixtures/1
  def destroy
    @fixture = Fixture.find(params[:id])
    @fixture.destroy

    redirect_to '/'
  end
end
