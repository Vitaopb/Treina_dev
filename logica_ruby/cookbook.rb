def welcome()
  puts "Bem vindo ao Cookbook do Ruby"
end

def menu_escolha()
  puts "[1] Adicionar receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"
  
  print "Escolha uma opção: "

  return gets.chomp
end


def add_receita()
  puts "Digite o nome da receita: "
  nome_receita = gets.chomp
  puts "Digite a descrição da receita: "
  descricao_receita = gets.chomp
  
  puts
  puts "Receita adicionada com sucesso!"
  puts
  return {
      "nome": nome_receita,
      "descrição": descricao_receita
      }
end

def listar_receitas(receitas)
  puts "Receitas cadastradas:"
  puts
    receitas.each do |receita|
      puts "* #{receita[:nome]}: #{receita[:descrição]}"
    end
end


receitas = []
welcome()

escolha = menu_escolha()

while escolha != "3" do
  case escolha
  when "1"
    receitas.push(add_receita())
  when "2"
    listar_receitas(receitas)
  else
    puts "Opção inválida"
  end

  puts

  escolha = menu_escolha()
end
