require_relative 'seed_helper'
require_relative 'seeds/destroy'

[
  'config',
  'accounts',
  'settings',
  'users',
  'custom_fields',
  'features',
  'categories',
  'tags',
  'sections',
  'templates',
  'stories',
  'pages',
  'events',
  'team_members',
  'maps',
  'dummy_data'
].each do |seed_type|
  print "Seeding #{seed_type.humanize.titleize}..."
  require_relative "seeds/#{seed_type}"
  print " \033[32m\u2713\033[0m\n"
end
