def cadastrar_produto(produtos)
  print_default"inicial cadastro ...", true, true, 2

  print_blue "Digite o nome do produto: ", false, false
  name = gets.chomp
  clear_screen

  print_blue "Digite descrição para #{green(name)}: ", false, false
  description = gets.chomp
  clear_screen

  print_blue "Digite o preço para #{green(name)}: ", false, false
  price = gets.to_f
  clear_screen

  print_blue "Digite a quantidade para #{green(name)}: ", false, false
  quantity = gets.chomp
  clear_screen

  produtos << {
    id: Time.now.to_i,
    nome: name,
    preço: price,
    quantidade: quantity
  }

  print_green "Produto #{green(name)} cadastrado com sucesso!", true, true, 2
end
