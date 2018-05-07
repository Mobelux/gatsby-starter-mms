print "Seeding Pages..."

account = Account.find_by(domain_name: 'localhost:3000')

home = Page.create!(
  account: account,
  title: 'MMS',
  subtitle: 'Welcome!',
  route: '/',
  locked: true,
  banner_image: '',
  blocks: "",
  template: Template.where(account: account, name: 'Home').first
)
home.publish
print "."

print " \033[32m\u2713\033[0m\n"
