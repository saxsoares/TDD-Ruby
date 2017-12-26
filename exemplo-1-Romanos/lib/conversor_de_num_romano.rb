class ConversorDeNumRomano
    TABELA = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000,
    }
    def converte num_em_romano
        last_right_neighbor = 0
        digitos = num_em_romano.split('').map{|digito| TABELA[digito]}
        digitos.reverse.reduce(0) do |acumulador, digito|
            multiplicador = 1
            multiplicador = -1 if digito < last_right_neighbor

            # atualiza vizinho da direita
            last_right_neighbor = digito

            acumulador + digito * multiplicador
        end
    end
end
