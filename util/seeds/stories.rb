print "Seeding Stories..."

account = Account.find_by(domain_name: 'localhost:3000')
banner = build_image('db/seeds/files/dummy/banner.png', account)
abstract = build_image('db/seeds/files/dummy/abstract.png', account)

Story.create!(
  account: account,
  title: "Story",
  section: Section.where(account: account, name: 'Story').first,
  subtitle: "Subtitle",
  slug: "story",
  featured_home: false,
  banner_image: banner,
  abstract: "Abstract",
  abstract_photo: abstract,
  blocks: nil,
  tags: [ 'Tag' ],
  template: Template.where(account: account, name: 'Story').first,
  visible: true
)
print "."

print " \033[32m\u2713\033[0m\n"
