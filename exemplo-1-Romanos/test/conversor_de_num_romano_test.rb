require 'test/unit'
require File.expand_path(
    '../lib/conversor_de_num_romano.rb',
    File.dirname(__FILE__))

class ConversorDeNumRomanoTest < Test::Unit::TestCase
    def teste_deve_entender_simbolo_I
        romano = ConversorDeNumRomano.new
        numero = romano.converte('I')
        assert_equal(1, numero)
    end
    
    def teste_deve_entender_simbolo_V
        romano = ConversorDeNumRomano.new
        numero = romano.converte 'V'
        assert_equal 5, numero
    end

    def teste_deve_entender_dois_simbolos
        romano = ConversorDeNumRomano.new
        numero = romano.converte 'II'
        assert_equal 2, numero
    end
    
    def teste_deve_entender_quatro_simbolos
        romano = ConversorDeNumRomano.new
        numero = romano.converte 'XXII'
        assert_equal 22, numero
    end

    def teste_deve_entender_num_como_IX
        romano = ConversorDeNumRomano.new
        numero = romano.converte 'IX'
        assert_equal 9, numero
    end

    def teste_deve_entender_num_complexos_como_XXIV
        romano = ConversorDeNumRomano.new
        numero = romano.converte 'XXIV'
        assert_equal 24, numero
    end

end
