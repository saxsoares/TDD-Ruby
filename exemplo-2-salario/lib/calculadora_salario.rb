class CalculadoraSalario
    def calcula_salario funcionario
        if funcionario.cargo == Cargo::DESENVOLVEDOR
            return funcionario.salario * 0.9 if funcionario.salario <= 3000
            return funcionario.salario * 0.8
        else 
            return funcionario.salario * 0.85 if funcionario.salario <= 2500
            return funcionario.salario * 0.75
        end
    end
end
