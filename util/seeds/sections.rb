account = Account.find_by(domain_name: 'localhost:3000')

[ 'Page', 'Story', 'Event' ].each do |type|
  Section.create!(
    account: account,
    name: type,
    page_type: type
  )
  print "."
end
