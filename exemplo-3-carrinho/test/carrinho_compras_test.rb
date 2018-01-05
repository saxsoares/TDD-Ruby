require 'test/unit'
require File.expand_path('../lib/item.rb',
    File.dirname(__FILE__))
require File.expand_path('../lib/carrinho_compras.rb',
    File.dirname(__FILE__))

class TesteMaiorPreco < Test::Unit::TestCase
   def teste_deve_retonar_zero_se_carrinho_vazio
       carrinho = CarrinhoCompras.new

       assert_equal 0, carrinho.maior_valor
   end
   
   def teste_deve_retonar_valor_do_item_se_carrinho_com_1
       carrinho = CarrinhoCompras.new
       carrinho << Item.new('Geladeira', 1, 900.0)

       assert_equal 900.0, carrinho.maior_valor
   end
   def teste_deve_retonar_maior_valor
       carrinho = CarrinhoCompras.new
       carrinho << Item.new('Geladeira', 1, 900.0)
       carrinho << Item.new('Fogao', 1, 1500.0)
       carrinho << Item.new('Maquina de Lavar', 1, 700.0)

       assert_equal 1500.0, carrinho.maior_valor
   end
end     
