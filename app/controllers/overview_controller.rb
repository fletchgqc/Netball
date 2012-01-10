class OverviewController < ApplicationController
  def index
    @fixtures = Fixture.all_upcoming
    @players = Player.all
  end
end
