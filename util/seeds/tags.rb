category = Category.find_by(account: ACCOUNT, name: 'Category')

Tag.create!(
  name: 'Tag',
  category: category,
  account: ACCOUNT
)
print "."
