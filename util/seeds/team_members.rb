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
    account: ACCOUNT,
    name: person[:name],
    position: i,
    email: person[:email],
    title: person[:title]
  )
  print "."
end
