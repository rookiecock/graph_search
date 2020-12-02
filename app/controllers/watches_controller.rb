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
    @watch = Watch.new
  end

  # GET /watches/1/edit
  def edit
    if @watch.user != current_user then
      raise ActiveRecord::RecordNotFound
    end
  end

  # POST /watches
  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user

    if @watch.save
      flash.notice = "You're now watc