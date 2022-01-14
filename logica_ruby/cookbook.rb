puts "Bem vindo ao Cookbook do Ruby"

receitas = []

add = "s"

while add == "s" do
  puts "Digite o nome da receita: "
  name = gets.chomp
  receitas.push(name)
  
  puts "Receita #{name} cadastrada com sucesso!"

  puts "Quer adicionar uma nova receita? (s/n)"
  add = gets.chomp
end

puts "========== Receitas cadastradas =========="
receitas.each do |receita|
  puts receita
end