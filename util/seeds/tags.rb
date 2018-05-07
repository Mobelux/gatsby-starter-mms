print "Seeding Tags..."

account = Account.find_by(domain_name: 'localhost:3000')
category = Category.find_by(account: account, name: 'Category')

Tag.create!(
  name: 'Tag',
  category: category,
  account: account
)
print "."

print " \033[32m\u2713\033[0m\n"
