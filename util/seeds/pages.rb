home = Page.create!(
  account: ACCOUNT,
  title: 'MMS',
  subtitle: 'Welcome!',
  route: '/',
  locked: true,
  banner_image: '',
  blocks: "",
  template: Template.where(account: ACCOUNT, name: 'Home').first
)
home.publish
print "."
