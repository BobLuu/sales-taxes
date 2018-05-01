require 'pry'

ordered_directories = %w(libs helpers models **)
ordered_directories.each do |directory|
  Dir[File.dirname(__FILE__) + "/app/#{directory}/*.rb"].each { |file| require file }
end

TaxCalculation.new.run
