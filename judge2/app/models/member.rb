class Member < ActiveRecord::Base
	validate :check_m
	def check_m
		s=File.read(Rails.root.join("app/assets/javascripts/check_m.js"))
		c=ExecJS.compile(s)
		unless c.call("check_m1",Name)
			errors.add :name, "is dirty name"
		end
	end
end
