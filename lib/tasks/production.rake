namespace :production do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando Categorias"
    Category.create!(name: "Tecnologia", description: "Vídeos sobre tecnologia", status: 0)
    Category.create!(name: "Cinema", description: "Vídeos sobre Cinema", status: 0)
    Category.create!(name: "Arte", description: "Vídeos sobre Arte", status: 0)
    Category.create!(name: "Saúde", description: "Vídeos sobre Saúde", status: 0)
    Category.create!(name: "Beleza", description: "Vídeos sobre Beleza", status: 0)
    Category.create!(name: "Política", description: "Vídeos sobre Política", status: 0)
    Category.create!(name: "Música", description: "Vídeos sobre Música", status: 0)
    Category.create!(name: "Games", description: "Vídeos sobre Games", status: 0)
    puts "-------------------------------------------------"
    puts "Cadastrando Vídeos"
    
    16.times do |i|
        @movie = Movie.new
        @movie.name = "Vídeo nº #{i}"
        @movie.url = "https://content.jwplatform.com/manifests/yp34SRmf.m3u8"
        @movie.user_id = 1
        @movie.category_id = rand(1..8)
        @movie.description = "Vídeos sobre #{@movie.category.name}"
        @movie.save
    end
    puts "-------------------------------------------------"
    puts "Fim Cadastrando Vídeos"
  end
end
