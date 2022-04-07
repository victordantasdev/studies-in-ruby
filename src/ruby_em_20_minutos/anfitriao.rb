#!/usr/bin/env ruby

class MegaAnfitriao

  attr_accessor :nomes

  # Criar objeto
  def initialize(nomes = "Mundo")
    @nomes = nomes
  end

  # Dizer olá a todos
  def diz_ola
    if @nomes.nil?
      puts "..."
    
    elsif @nomes.respond_to?("each")
      # @nomes é uma lista de algum tipo,
      # assim podemos iterar
      @nomes.each do |nome|
        puts "Olá #{nome}!"
      end

    else 
      puts "Olá #{@nomes}"
    end
  end

  def diz_adeus
    if @nomes.nil?
      puts "..."
    
    elsif @nomes.respond_to?("join")
      # Juntar os elementos a lista
      # usando a vírgula como separador
      puts "Adeus #{@nomes.join(", ")}. Voltem em breve."
    
    else
      puts "Adeus #{@nomes}. Volta sempre."
    end
  end 
end

if __FILE__ == $0
  mg = MegaAnfitriao.new
  mg.diz_ola
  mg.diz_adeus

  # Alterar o nome para Victor
  mg.nomes = "Victor"
  mg.diz_ola
  mg.diz_adeus

  # Alterar o nome para um vetor de nomes
  mg.nomes = ["Karine", "Victor"]
  mg.diz_ola
  mg.diz_adeus

  # Alterar para nil
  mg.nomes = nil
  mg.diz_ola
  mg.diz_adeus
end
