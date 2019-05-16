namespace :region do
    desc "china city data"
    task seed: :environment do
      provinces=File.read('./lib/region/provinces.json')
      @provinces = JSON.parse(provinces)
      if Province.count==0
        @provinces.each do |province|
          Province.create(code: province["code"],name: province["name"])
        end
      end
  
  
      cities=File.read('./lib/region/cities.json')
      @cities = JSON.parse(cities)
      if City.count==0
        @cities.each do |city|
          City.create(code: city["code"],name: city["name"],provincecode: city["provinceCode"])
        end
      end
  
  
      areas=File.read('./lib/region/areas.json')
      @areas = JSON.parse(areas)
      if Area.count==0
        @areas.each do |area|
          Area.create(code: area["code"],name: area["name"],citycode: area["cityCode"],provincecode: area["provinceCode"])
        end
      end
  
      streets=File.read('./lib/region/streets.json')
      @streets = JSON.parse(streets)
      if Street.count==0
        @streets.each do |street|
          Street.create(code: street["code"],name: street["name"],areacode: street["areaCode"],citycode: street["cityCode"],provincecode: street["provinceCode"])
        end
      end
  
    end
end