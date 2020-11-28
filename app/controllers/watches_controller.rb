class WatchesController < ApplicationController
  before_action :set_watch, only: [:show, :edit, :update, :destroy]
  before_action :get_stocks, only: [:new, :edit, :create, :update]
  before_filter :authenticate_user!

  # GET /watches
  def index
    @watches = Watch.where(:user => current_user)
  end

  # GET /watches/new
  def new