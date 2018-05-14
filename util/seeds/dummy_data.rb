banner = build_image('db/seeds/files/dummy/banner.png', ACCOUNT)
abstract = build_image('db/seeds/files/dummy/abstract.png', ACCOUNT)
image_block_image = build_image('db/seeds/files/dummy/image-block.png', ACCOUNT)
quote_block_image = build_image('db/seeds/files/dummy/attribution-photo.png', ACCOUNT)
template = Template.where(account: ACCOUNT).first
description_list_item = DescriptionListItem.new(
  name: "Dummy Description List Item Name",
  description: "Dummy Description List Item Description"
)

blocks = [
  TextBlock.new(
    position: 1,
    content: "Suspendisse feugiat. Praesent nec nisl a purus blandit viverra."
  ),
  ImageBlock.new(
    position: 2,
    image: image_block_image,
    caption: "Fusce ac felis sit amet ligula pharetra condimentum.",
    subcaption: "Other thing",
    format: "medium"
  ),
  SeparatorBlock.new(
    position: 3
  ),
  QuoteBlock.new(
    position: 4,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus laoreet.",
    attribution: "Dummy Dummerson",
    attribution_photo: quote_block_image,
    format: "large"
  ),
  ButtonBlock.new(
    position: 5,
    button_title: "Lorem Ipsum",
    button_url: "#"
  ),
  DescriptionListBlock.new(
    position: 6,
    headline: "Dummy Description List Block Headline",
    subheadline: "Dummy Description List Block Subheadline",
    description_list_items: [
      DescriptionListItem.new(
        name: "Dummy Description List Item Name",
        description: "Dummy Description List Item Description"
      )
    ]
  ),
  VideoBlock.new(
    position: 7,
    embed_code: '<iframe width="560" height="315" src="https://www.youtube.com/embed/NAh9oLs67Cw" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>',
    video_minutes: 61,
    video_type: "YouTube",
    caption: "Dummy Video Block Caption"
  ),
  GalleryBlock.new(
    position: 8,
    gallery_items: [
      GalleryItem.new(
        image: image_block_image,
        caption: 'Dummy Gallery Block Caption',
      ),
      GalleryItem.new(
        image: image_block_image,
        caption: 'Dummy Gallery Block Caption',
      )
    ]
  )
]

[ Story, Page, Event ].each do |type|
  section = Section.create(
    account: ACCOUNT,
    name: 'Dummy Section',
    page_type: "#{type}"
  )

  params = {
    account: ACCOUNT,
    title: "Dummy #{type}",
    section: section,
    subtitle: "Dummy subtitle",
    slug: "dummy-#{type.name.downcase}",
    featured_home: false,
    banner_image: banner,
    abstract: "Dummy abstract text",
    abstract_photo: abstract,
    blocks: blocks,
    tags: ['Dummy Tag'],
    template: template,
    visible: false
  }

  if type == Event
    params = params.merge({
      venue: "Dummy Venue",
      venue_address: "Cool Street",
      event_date: Date.today,
      start_time: "8:00AM",
      end_time: "10:00AM",
      price_info: "$$",
      call_to_action_text: "Hey, Action!",
      call_to_action_url: "#"
    })
  end

  obj = type.create!(params)

  print "."
end
