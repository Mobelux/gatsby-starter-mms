print "Seeding Sections..."

account = Account.find_by(domain_name: 'localhost:3000')

[ 'Page', 'Story', 'Event' ].each do |type|
  Section.create!(
    account: account,
    name: type,
    page_type: type
  )
  print "."
end

print " \033[32m\u2713\033[0m\n"
