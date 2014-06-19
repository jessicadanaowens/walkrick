require_relative "testing_library"


require_relative "testing_library"

def hamming(strand_1, strand_2)
  hamming_code = 0
  string_index = 0

  strand_1.each_char do |character|
    unless character == nil || string_index == nil
      if character != strand_2[string_index]
        hamming_code += 1
      end
      string_index += 1
    end
  end
  hamming_code
end



check("Hamming distance between identical strands",
      hamming("A", "A") == 0)

check("Hamming distance for single nucleotide strand",
      hamming("A", "G") == 1)

check("Hamming distance between small strands",
      hamming("AG", "CT") == 2)

check("Hamming distance between two other small strands",
      hamming("AT", "CT") == 1)

check("Hamming distance in longer strands",
      hamming("GGACG", "GGTCG") == 1)

check("Ignoring extra length in the first strand when it's longer",
      hamming("AAAG", "AAA") == 0)

check("Ignoring extra length in the second strand when it's longer",
      hamming("AAA", "AAAG") == 0)




