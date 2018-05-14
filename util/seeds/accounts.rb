ACCOUNT = Account.create!(
  domain_name: 'localhost:3000',
  company_name: 'Gatsby/MMS Starter',
  ui_color: '#ff6e0a',
  ui_logo: '<svg width="13" height="12" viewBox="0 0 13 12" xmlns="http://www.w3.org/2000/svg"><path d="M9.5 0l-3 9-3-9h-2L0 12h13L11.5 0z" fill-rule="evenodd"/></svg>',
)
mobelux_splash = build_image('../hyde-park-web/util/seeds/files/saunders.jpg', ACCOUNT)
ACCOUNT.update(splash_image: mobelux_splash)
ACCOUNT.save
