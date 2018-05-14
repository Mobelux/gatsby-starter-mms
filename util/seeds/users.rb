account = Account.find_by(domain_name: 'localhost:3000')

ROLES = [ 'Photographer', 'Writer', 'Editor', 'Admin', 'Super' ]

ROLES.each do |role|
  User.create!(
    account: account,
    first_name: role,
    last_name: 'Mobelux',
    email: "#{role.downcase}@mobelux.com",
    password: 'password',
    role: role
  )
  print "."
end
