class Item
    attr_reader :descricao, :quantidade, :valor_un
    def initialize(descricao, quantidade, valor_un)
        @descricao = descricao
        @quantidade = quantidade
        @valor_un = valor_un
    end

    def valor_total
        valor_un * quantidade
    end
end
