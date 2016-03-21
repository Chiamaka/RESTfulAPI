	json.data do
		json.name @tenant.name
		json.age @tenant.age
		json.national_id @tenant.national_id
		json.school_id @tenant.school_id
		json.crib_id @tenant.cribb_id

		json.relationship do 
			json.school @tenant.school, :name, :address
			json.crib @tenant.cribb, :description
		end
	end



