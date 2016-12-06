# Protein Translation Challenge
class Translation
  CODONS = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine', 'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',       'UUG' => 'Leucine',
    'UCU' => 'Serine',        'UCC' => 'Serine',
    'UCA' => 'Serine',        'UCG' => 'Serine',
    'UAU' => 'Tyrosine',      'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',      'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',    'UAA' => 'STOP',
    'UAG' => 'STOP',          'UGA' => 'STOP'
  }.freeze

  def self.of_codon(codon)
    CODONS.fetch(codon)
  end

  def self.of_rna(strand)
    codons = []
    strand.chars.each_slice(3) { |codon| codons << codon.join }

    proteins = []
    codons.each do |codon|
      raise InvalidCodonError unless CODONS.key?(codon)
      break unless of_codon(codon) != 'STOP'
      proteins << of_codon(codon)
    end
    proteins
  end
end

class InvalidCodonError < StandardError
end
