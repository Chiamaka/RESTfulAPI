json.cribs @cribs do |crib| 
	json.data do
		json.description crib.description
		json.owner_id crib.owner_id
		json.tenants crib.tenants.count
	end

	json.relationship do
		json.owner crib.owner, :first_name, :last_name, :email
		json.tenant crib.tenants, :name, :age, :national_id, :school_id
	end
end


