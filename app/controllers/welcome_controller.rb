class WelcomeController < ApplicationController
  before_action :authenticate, only: [:index, :create, :destroy]
  def index
  end
end
