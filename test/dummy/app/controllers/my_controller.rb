class MyController < ApplicationController

  def index
    render plain: 'Hello, world!'
  end

  def api
    render json: {
      name: AppResponseLogger.to_s,
      version: AppResponseLogger::VERSION,
      some_number: 123
    }
  end


end
