require 'terminal-table'

def retirar_estoque(produtos)

  print_yellow "=========RETIRAR DO ESTOQUE=========", false, false

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Quantidade']
    produtos.each do |produto|
      t.add_row [produto[:id], produto[:nome], produto[:quantidade]]
    end
 end

 puts table
  print_blue "Digite o código do produto a ser retirado: ", false, false

  id_produto = gets.to_i
  produto_encontrado = produtos.find { |produto| produto[:id] == id_produto }

  if(!produto_encontrado)
    print_red "Produto não encontrado."
    retirar_estoque(produtos)
  end
  print_blue "Digite a quantidade a ser retirada: ", false, false
  quantidade = gets.to_i
  if quantidade > produto_encontrado[:quantidade]
    print_red "Quantidade inválida, não pode ser maior que a quantidade em estoque."
    return
  end
  produto_encontrado[:quantidade] -= quantidade
  print_green "Produto retirado com sucesso!"
  print_yellow "Produto: #{produto_encontrado[:nome]}"
  print_yellow "Quantidade retirada: #{quantidade}"
  print_yellow "Quantidade restante: #{produto_encontrado[:quantidade]}"
  print_yellow "===================================="
  print_yellow "Pressione qualquer tecla para continuar..."
  gets
  system("clear")

end
