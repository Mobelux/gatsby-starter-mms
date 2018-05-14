account = Account.find_by(domain_name: 'localhost:3000')
category = Category.find_by(account: account, name: 'Category')

Tag.create!(
  name: 'Tag',
  category: category,
  account: account
)
print "."
