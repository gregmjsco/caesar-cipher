def caeser_cipher(text, shift)
    alphabet = ("a".."z").to_s
    caesar = ""

    str.each_char do |letter|
        if letter == " "
            caesar += " "
        else
            old_ind = alphabet.find_index(letter)
            new_ind = (old_ind + shift) % alphabet.count
            caesar += alphabet[new_ind]
        end
    end

    caesar
end
