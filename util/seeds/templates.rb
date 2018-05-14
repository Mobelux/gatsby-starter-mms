# Defaults
PAGE_TYPES = [ 'Page', 'Story', 'Event' ]
PAGE_TYPES.each do |page_type|
  Template.create!(
    account: ACCOUNT,
    page_type: page_type,
    name: page_type
  )
  print "."
end

# Page Templates
Template.create!(
  account: ACCOUNT,
  page_type: 'Page',
  name: 'Home'
)
