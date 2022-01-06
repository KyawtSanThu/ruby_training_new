class UploadController < ApplicationController
  def display
    @folder = params[:folder]
    @view = "public/#{@folder}"
    Dir.mkdir (@view) unless File.exists? (@view)
    @img = params[:image]
    File.open(Rails.root.join("public", @folder, @img.original_filename), "wb") do |file|
      file.write(@img.read)
      @result = @img.original_filename
    end
  end
end
