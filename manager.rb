class Cliente
    attr_accessor :nome, :email, :telefone
  
    def initialize(nome, email, telefone)
      @nome = nome
      @email = email
      @telefone = telefone
    end
  end
  
  clientes = []
  
  puts "Bem-vindo ao programa de cadastro de clientes"
  
  while true do
    puts "Digite 'novo' para cadastrar um novo cliente, 'listar' para ver a lista de clientes cadastrados, ou 'sair' para encerrar o programa:"
    escolha = gets.chomp
  
    case escolha.downcase
    when "novo"
      puts "Digite o nome do cliente:"
      nome = gets.chomp
  
      puts "Digite o e-mail do cliente:"
      email = gets.chomp
  
      puts "Digite o telefone do cliente:"
      telefone = gets.chomp
  
      cliente = Cliente.new(nome, email, telefone)
      clientes << cliente
  
      puts "Cliente cadastrado com sucesso!"
    when "listar"
      if clientes.length == 0
        puts "Não há clientes cadastrados ainda."
      else
        puts "Clientes cadastrados:"
        clientes.each do |cliente|
          puts "- Nome: #{cliente.nome}, E-mail: #{cliente.email}, Telefone: #{cliente.telefone}"
        end
      end
    when "sair"
      puts "Encerrando o programa..."
      exit
    else
      puts "Opção inválida. Tente novamente."
    end
  end
  