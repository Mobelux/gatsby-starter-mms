ROLES = [ 'Photographer', 'Writer', 'Editor', 'Admin', 'Super' ]

ROLES.each do |role|
  User.create!(
    account: ACCOUNT,
    first_name: role,
    last_name: 'Mobelux',
    email: "#{role.downcase}@mobelux.com",
    password: 'password',
    role: role
  )
  print "."
end
