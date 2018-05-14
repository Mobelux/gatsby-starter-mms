banner = build_image('db/seeds/files/dummy/banner.png', ACCOUNT)
abstract = build_image('db/seeds/files/dummy/abstract.png', ACCOUNT)

Story.create!(
  account: ACCOUNT,
  title: "Story",
  section: Section.where(account: ACCOUNT, name: 'Story').first,
  subtitle: "Subtitle",
  slug: "story",
  featured_home: false,
  banner_image: banner,
  abstract: "Abstract",
  abstract_photo: abstract,
  blocks: nil,
  tags: [ 'Tag' ],
  template: Template.where(account: ACCOUNT, name: 'Story').first,
  visible: true
)
print "."
