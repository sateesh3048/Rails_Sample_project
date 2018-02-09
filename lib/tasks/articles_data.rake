namespace :articles_data do
  desc "Loading articles data"
  task load: :environment do
    puts "Total number of articles"
    puts Article.count

  end

  desc "Storing articles data"
  task store: :environment do
    puts "Adding new data to articles table"
  end

end
