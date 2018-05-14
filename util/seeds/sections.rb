[ 'Page', 'Story', 'Event' ].each do |type|
  Section.create!(
    account: ACCOUNT,
    name: type,
    page_type: type
  )
  print "."
end
