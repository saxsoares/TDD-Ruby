class CarrinhoCompras
    attr_reader :itens
    def initialize
        @itens =[]
    end
    def <<(item)
        itens << item
    end

    def maior_valor
        #return 0 if itens.empty?
        
        #maior = itens[0].valor_total
        #itens.each do |item|
        #    maior = item.valor_total if maior < item.valor_total
        #end
        #maior
        itens.map(&:valor_total).max || 0
    end
end
