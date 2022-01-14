puts "Bem vindo ao Cookbook do Ruby"
puts "Digite o nome da receita:"

receitas = []

name = gets.chomp

receitas.push(name)

puts "Receita #{name} cadastrada com sucesso!"

puts receitas