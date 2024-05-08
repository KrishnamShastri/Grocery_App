class GroceriesController < ApplicationController
  before_action :authenticate_user!  # Ensures user is signed in

  def index
    @groceries = current_user.groceries  # Fetch current user's groceries
  end

  # ... other actions (new, create) ...
end
