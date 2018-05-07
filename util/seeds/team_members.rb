print "Seeding Team Members..."

account = Account.find_by(domain_name: 'localhost:3000')

MOBELUX =[
{
  name: "Matt Clough",
  email: "wyatt@mobelux.com",
  title: "Web Development"
},{
  name: "Aubrey Northam",
  email: "aubrey.northam@mobelux.com",
  title: "Web Development"
},{
  name: "Danny Sellergren",
  email: "danny@mobelux.com",
  title: "Web Development"
},{
  name: "Liz Swain",
  email: "liz@mobelux.com",
  title: "Web Development"
}]

MOBELUX.each_with_index do |person, i|
  TeamMember.create!(
    account: account,
    name: person[:name],
    position: i,
    email: person[:email],
    title: person[:title]
  )
  print "."
end

print " \033[32m\u2713\033[0m\n"
