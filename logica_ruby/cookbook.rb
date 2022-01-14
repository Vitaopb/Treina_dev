puts "Bem vindo ao Cookbook do Ruby"

receitas = []

adicionar = "s"

while adicionar == "s" do
  puts "Digite o nome da receita: "
  name = gets.chomp
  receitas.push(name)
  
  puts "Receita #{name} cadastrada com sucesso!"

  puts "Quer adicionar uma nova receita? (s/n)"
  adicionar = gets.chomp
end

puts "========== Receitas cadastradas =========="
receitas.each do |receita|
  puts receita
end