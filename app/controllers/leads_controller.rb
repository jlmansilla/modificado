class LeadsController < ApplicationController
  before_action :set_lead, only: %i[ show edit update destroy ]
  
  def index
    @leads = Lead.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
