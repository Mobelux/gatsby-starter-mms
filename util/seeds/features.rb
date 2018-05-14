Feature.create!(
  key: 'events',
  enabled: false,
  enabled_account_ids: [ACCOUNT.id]
)
print '.'

Feature.create!(
  key: 'team_members',
  enabled: false,
  enabled_account_ids: [ACCOUNT.id]
)
print '.'
