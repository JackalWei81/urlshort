class MappingsController < ApplicationController

  require 'securerandom'

  def index
    @mappings = Mapping.all
    @mapping = Mapping.new
  end

  def create
    @mapping = Mapping.new(url_params)

    randurl = SecureRandom.hex(5)

    @mapping.shotrurl = randurl
    @mapping.save

    redirect_to mappings_path
  end

  protected

  def url_params
    params.require(:mapping).permit(:longurl)
  end

end
