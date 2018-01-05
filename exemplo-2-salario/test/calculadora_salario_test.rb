require 'test/unit'
require File.expand_path(
    '../lib/calculadora_salario.rb',
    File.dirname(__FILE__))
require File.expand_path(
    '../lib/funcionario.rb',
    File.dirname(__FILE__))

class CalculadoraSalarioTest < Test::Unit::TestCase
    def teste_deve_calcular_salario_dev_sal_menor_limite
        calculadora = CalculadoraSalario.new
        desenvolvedor = Funcionario.new('Mauricio', 1500.0, Cargo::DESENVOLVEDOR)

        salario = calculadora.calcula_salario desenvolvedor

        assert_equal 1500 * 0.9, salario
    end

    def teste_deve_calcular_salario_dev_sal_maior_limite
        calculadora = CalculadoraSalario.new
        desenvolvedor = Funcionario.new('Fernando', 4000.0, Cargo::DESENVOLVEDOR)
        salario = calculadora.calcula_salario desenvolvedor

        assert_equal 4000 * 0.8, salario
    end

    def teste_deve_calcular_salario_dba_sal_maior_limite
        calculadora = CalculadoraSalario.new
        dba = Funcionario.new('Fernando', 2600.0, Cargo::DBA)

        salario = calculadora.calcula_salario dba

        assert_equal 2600 * 0.75, salario
    end
    
    def teste_deve_calcular_salario_dba_sal_menor_limite
        calculadora = CalculadoraSalario.new
        dba = Funcionario.new('Fernando', 2000.0, Cargo::DBA)

        salario = calculadora.calcula_salario dba

        assert_equal 2000 * 0.85, salario
    end

end
