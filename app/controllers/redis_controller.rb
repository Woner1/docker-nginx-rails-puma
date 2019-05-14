class RedisController < ApplicationController
  def index
    Redis.current.set('zykey','hello aa')
  end

  def show
    
  end

  def new
  end

  def create
  end

  def edit
  end
end
