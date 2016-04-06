social_network = SocialNetwork.find_by_subdomain('tbs')

social_network.scope_schema('public') do

Group.destroy_all
errors_users = []

File.open("/Users/harar/Desktop/1year1book/test2.csv").each do |line|

	username = line.strip.split(';')
	last_name = username[0]
	first_name = username[1]
	section_school = username[2]
	asso_1 = username[3]
	asso_2 = username.size > 3 ? username[4] : nil
	asso_3 = username.size > 4 ? username[5] : nil


#Verifier si l'utilisateur existe

users = User.where(first_name: first_name, last_name: last_name)

user = users.first

if user.blank?
	
	errors_users << last_name + " " + first_name
	next
	#user = User.new(first_name: first_name, last_name: last_name, email: first_name + last_name + "@tbs.fr") 
end
	section = Section.where(name: section).first
	if section.blank?
section = Section.new(name: section_school)
section.save
	end
	user.section_id = section.id
	user.save
	puts user.errors.inspect
	user.save!


[asso_1,asso_2,asso_3].each do |name_asso|
next if name_asso.nil?
group = Group.where(name: name_asso).first

	if group.blank?
group = Group.new(name: name_asso, group_type: "groups", privacy: "public", user_id: user.id )
group.save
puts group.errors.inspect
group.save!
end

	if group.logo.blank?
		group.logo = URI.encode("http://1year1book-transfer.s3.amazonaws.com/tbs/logo_asso/#{group.name}.")

member = Member.where(user_id: user.id, item_id: group.id, item_type: "Group")
if member.blank?
	member = Member.new(user_id: user.id, item_id: group.id, item_type: "Group", role: "member")
	member.save!
end

end
end

puts errors_users
end