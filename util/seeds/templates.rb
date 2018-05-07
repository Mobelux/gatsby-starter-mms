print "Seeding Templates..."

account = Account.find_by(domain_name: 'localhost:3000')

# Defaults
PAGE_TYPES = [ 'Page', 'Story', 'Event' ]
PAGE_TYPES.each do |page_type|
  Template.create!(
    account: account,
    page_type: page_type,
    name: page_type
  )
  print "."
end

# Page Templates
Template.create!(
  account: account,
  page_type: 'Page',
  name: 'Home'
)

print " \033[32m\u2713\033[0m\n"
