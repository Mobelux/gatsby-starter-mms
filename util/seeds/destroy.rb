# This file destroys all existing data before reseeding the database.
print "Destroying old data..."

Config.delete_all
Feature.delete_all
Account.delete_all
Page.delete_all
Story.delete_all
Event.delete_all
User.delete_all
Tag.delete_all
Template.delete_all
Category.delete_all
Image.delete_all
TeamMember.delete_all
Section.delete_all
CustomField.delete_all

print " \033[32m\u2713\033[0m\n"
