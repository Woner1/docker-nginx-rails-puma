namespace :region do
    desc "china city data"
    task seed: :environment do
      json=File.read('./lib/areas.json')
      obj = JSON.parse(json)
    end
end