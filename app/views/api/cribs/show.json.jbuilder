	json.data do
		json.description @crib.description
		json.owner_id @crib.owner_id
		json.tenants @crib.tenants.count

		json.relationship do 
			json.owner @crib.owner, :first_name, :last_name, :email
			json.tenants @crib.tenants, :name, :age, :national_id, :school_id
		end
	end



