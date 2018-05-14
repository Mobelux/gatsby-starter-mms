account = Account.find_by(domain_name: 'localhost:3000')

Feature.create!(
  key: 'events',
  enabled: false,
  enabled_account_ids: [account.id]
)
print '.'

Feature.create!(
  key: 'team_members',
  enabled: false,
  enabled_account_ids: [account.id]
)
print '.'
