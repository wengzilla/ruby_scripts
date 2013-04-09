class Decrypt
	def initialize(user_message_decrypt)
		@user_message_decrypt = user_message_decrypt
	end

def decrypt(user_message_decrypt,shift)
		@user_message_decrypt = user_message_decrypt
		@shift = shift
		split_message_decrypt = @user_message_decrypt.split("")
		decrypted_message = []
		split_message_decrypt.each do |letter|
			unless letter == " "
				decrypted_message << (((letter.ord - 97 - (@shift)) % 26) + 97).chr
			else
				decrypted_message << " "
			end
		end
		decrypted_message.join
	end
end