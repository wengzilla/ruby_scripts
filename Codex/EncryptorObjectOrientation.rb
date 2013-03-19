class Encryptor
	def initialize(user_message_encrypt)
		@user_message_encrypt = user_message_encrypt
	end

	def encrypt
			split_message_encrypt = @user_message_encrypt.split("")
			encrypted_message = []
			split_message_encrypt.each do |letter|
				unless letter == " "
					encrypted_message << (((letter.ord - 97 + 1) % 26) + 97).chr
				else 
					encrypted_message << " "
				end
			end
		puts "Your encrypted message is #{encrypted_message.join("")}"
	end
end