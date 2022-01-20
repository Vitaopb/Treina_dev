INSERIR_RECEITA = 1
VER_RECEITAS = 2
BUSCAR_RECEITA = 3
SAIR = 4

def welcome()
  puts "Bem vindo ao Cookbook do Ruby"
end

def menu_escolha()
  puts "[#{INSERIR_RECEITA}] Adicionar receita"
  puts "[#{VER_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITA}] Buscar receita"
  puts "[#{SAIR}] Sair"
  
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

def buscar_reiceita(receitas)
  puts "Qual receita você procura?"
  nome_receita = gets.chomp
  receitas.each do |receita|
    if receita[:nome] == nome_receita
      puts "* #{receita[:nome]}: #{receita[:descrição]}"
    else
      puts "Receita não encontrada!"
    end
  end
end

receitas = []
welcome()

escolha = menu_escolha()

loop do
  case escolha
  when "#{INSERIR_RECEITA}"
    receitas.push(add_receita())
  when "#{VER_RECEITAS}"
    listar_receitas(receitas)
  when "#{BUSCAR_RECEITA}"
    buscar_reiceita(receitas)
  when "#{SAIR}"
    puts "Obrigado por usar o Cookbook do Ruby"
    puts "Até mais!"
    break
  else
    puts "Opção inválida"
  end

  puts

  escolha = menu_escolha()
end
