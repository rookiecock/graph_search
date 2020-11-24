class WatchesController < ApplicationController
  before_action :set_watch, only: [:show, :edit, :update, :destroy]
  