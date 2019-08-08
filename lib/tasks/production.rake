namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "-------------------------------------------------"
    puts "Cadastrando Usuários"
    User.create!(username: "usuario",email: "user@admin.com",password: "12345678")
    puts "-------------------------------------------------"
    puts "Cadastrando Categorias"
    Category.create!(name: "Tecnologia", description: "Vídeos sobre tecnologia", status: 0)
    Category.create!(name: "Cinema", description: "Vídeos sobre Cinema", status: 0)
    Category.create!(name: "Arte", description: "Vídeos sobre Arte", status: 0)
    Category.create!(name: "Saúde", description: "Vídeos sobre Saúde", status: 0)
    Category.create!(name: "Beleza", description: "Vídeos sobre Beleza", status: 0)
    Category.create!(name: "Política", description: "Vídeos sobre Política", status: 0)
    Category.create!(name: "Música", description: "Vídeos sobre Música", status: 0)
    Category.create!(name: "Games", description: "Vídeos sobre Games", status: 0)
  end
end
