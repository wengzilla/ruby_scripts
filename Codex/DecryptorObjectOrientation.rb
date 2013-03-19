class Decrypt
	def initialize(user_message_decrypt)
		@user_message_decrypt = user_message_decrypt
	end

	def decrypt
			split_message_decrypt = @user_message_decrypt.split("")
			decrypted_message = []
			split_message_decrypt.each do |letter|
				unless letter == " "
					decrypted_message << (((letter.ord - 97 - 1) % 26) + 97).chr
				else
					decrypted_message << " "
				end
			end
		puts "Your decrypted message is #{decrypted_message.join}"
	end
end