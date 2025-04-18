require_relative 'display/menu'
require_relative 'display/screen_operation'
require_relative 'core/cadastrar_produto'
require_relative 'core/listar_produtos'
require_relative 'core/retirar_estoque'


produtos = [
  {
    id: Time.now.to_i + 1,
    nome: 'Kaiser 500ml',
    descrição: 'Cerveja Kaiser 500ml',
    preço: 5.50,
    quantidade: 10
  },
  {
    id: Time.now.to_i + 2,
    nome: 'Skol 350ml',
    descrição: 'Cerveja Skol 350ml',
    preço: 4.50,
    quantidade: 20
  },
  {
    id: Time.now.to_i + 3,
    nome: 'Eisenstein 600ml',
    descrição: 'Cerveja Eisenstein 600ml',
    preço: 6.50,
    quantidade: 15
  }
]

init_menu(produtos)
