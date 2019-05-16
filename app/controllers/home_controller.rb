class HomeController < ApplicationController
  def index
    provinces=File.read('./lib/region/provinces.json')
    @provinces = JSON.parse(provinces)
  
    # if Province.count==0
    #   @provinces.each do |province|
    #     Province.create(code: province["code"],name: province["name"])
    #   end
    # end


    cities=File.read('./lib/region/cities.json')
    @cities = JSON.parse(cities)


    if City.count==0
      @cities.each do |city|
        City.create(code: city["code"],name: city["name"],provincecode: city["provinceCode"])
      end
    end


    # areas=File.read('./lib/region/areas.json')
    # @areas = JSON.parse(areas)

    # streets=File.read('./lib/region/streets.json')
    # @streets = JSON.parse(streets)

    # villages=File.read('./lib/region/villages.json')
    # @villages = JSON.parse(villages)




    render json:{ cities: @cities }
  end

  def show
  end
end
