account = Account.find_by(domain_name: 'localhost:3000')
Category.create!(
  account: account,
  name: 'Category'
)
print "."
