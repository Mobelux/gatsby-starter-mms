banner = build_image('db/seeds/files/dummy/banner.png', ACCOUNT)
abstract = build_image('db/seeds/files/dummy/abstract.png', ACCOUNT)

Event.create!(
  account:  ACCOUNT,
  title: "Event",
  section: Section.where(account:  ACCOUNT, name: 'Event').first,
  subtitle: "Subtitle",
  slug: "event",
  featured_home: false,
  banner_image: banner,
  abstract: "Abstract",
  abstract_photo: abstract,
  blocks: nil,
  tags: [ 'Tag' ],
  template: Template.where(account:  ACCOUNT, name: 'Event').first,
  visible: true,
  venue: "Venue",
  venue_address: "Address",
  event_date: Date.today,
  start_time: "Start Time",
  end_time: "End Time",
  price_info: "Price Information",
  call_to_action_text: "Action!",
  call_to_action_url: "https://www.mobelux.com"
)
print "."
