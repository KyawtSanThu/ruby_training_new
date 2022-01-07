class FileController < ApplicationController
  def read_data
    file = File.join(Rails.root, (params[:filename]))
    file_directory = File.open(file)
    @file_data = File.read(file_directory)
    puts "#{@file_data}"
    render "directory"
  end
end
