require 'terminal-table'

def listar_produtos(produtos)
  print_yellow "=========LISTA DE PRODUTOS=========", false, false

 table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Preço', 'Quantidade']
    produtos.each do |produto|
      t.add_row [produto[:id], produto[:nome], produto[:preço], produto[:quantidade]]
    end
 end

 puts table
end
