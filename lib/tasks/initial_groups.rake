require './lib/initial_groups_parser'

namespace :initial_groups do
  task :import => :environment do
    InitialGroupsParser.create_initial_groups
  end
end
