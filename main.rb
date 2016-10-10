# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

pp ordered_by_qualifications(@candidates)

# binding.pry

