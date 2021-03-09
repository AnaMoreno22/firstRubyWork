#!/usr/bin/env ruby
class MegaAnfitriao
    attr_accessor :names

    #criar o objeto
    def initialize?(names = "World")
        @names = names
    end

    #Dizer Olá
    def diz_ola
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
          # @names é uma lista de agum tipo
          @names.each do |names|
            puts "Olá #{names}"
          end
        else 
            puts "Olá #{@names}"
        end
    end
    def diz_adeus
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            # Juntar elementos à lista
            # Usando a virgula como separador
            puts "Adeus #{@names.join(", ")}. Voltem sempre."
        else 
            puts "adeus #{@names}. Voltem sempre."
        end
    end
end

if __FILE__ == $0
    mg = MegaAnfitriao.new
    mg.diz_ola
    mg.diz_adeus

    # Alterar o nome para Ana
    mg.names = "Ana"
    mg.diz_ola
    mg.diz_adeus

    # Alterar o nome para um vetor de nomes
    mg.names = ["Ana", "Amy", "Isa", "Mathew"]
    mg.diz_ola
    mg.diz_adeus

    # Alterar para nil
    mg.names = nil
    mg.diz_ola
    mg.diz_adeus
end
