require 'pry'

ordered_directories = %w(libs)
ordered_directories.each do |directory|
  Dir[Dir.pwd + "/app/#{directory}/*.rb"].each { |file| require file }
end

require 'fileutils'
include CsvHelper