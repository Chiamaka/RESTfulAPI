json.data @owners do |owner| 
	json.first_name owner.first_name
	json.last_name owner.last_name
	json.email_address owner.email
end