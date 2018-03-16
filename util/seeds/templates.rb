print "Seeding Templates..."

account = Account.find_by(domain_name: 'localhost:3000')

# Defaults
Template.create!(
  account: account,
  page_type: 'Page',
  name: 'Page'
)

Template.create!(
  account: account,
  page_type: 'Story',
  name: 'Story'
)

Template.create!(
  account: account,
  page_type: 'Event',
  name: 'Event'
)
# End Defaults

print "."

print " \033[32m\u2713\033[0m\n"
