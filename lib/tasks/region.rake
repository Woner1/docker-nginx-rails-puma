namespace :region do
    desc "china city data"
    task seed: :environment do
        if Province.count == 0 && City.count == 0
            params = {"name":"广东省","cities":[{"province_id":1,"name":"广州市"},{"province_id":1,"name":"韶关市"},{"province_id":1,"name":"深圳市"},{"province_id":1,"name":"珠海市"},{"province_id":1,"name":"汕头市"},{"province_id":1,"name":"佛山市"},{"province_id":1,"name":"江门市"},{"province_id":1,"name":"湛江市"},{"province_id":1,"name":"茂名市"},{"province_id":1,"name":"肇庆市"},{"province_id":1,"name":"惠州市"},{"province_id":1,"name":"梅州市"},{"province_id":1,"name":"汕尾市"},{"province_id":1,"name":"河源市"},{"province_id":1,"name":"阳江市"},{"province_id":1,"name":"清远市"},{"province_id":1,"name":"东莞市"},{"province_id":1,"name":"中山市"},{"province_id":1,"name":"潮州市"},{"province_id":1,"name":"揭阳市"},{"province_id":1,"name":"云浮市"}]},{"name":"河北省","cities":[{"province_id":2,"name":"石家庄市"},{"province_id":2,"name":"唐山市"},{"province_id":2,"name":"秦皇岛市"},{"province_id":2,"name":"邯郸市"},{"province_id":2,"name":"邢台市"},{"province_id":2,"name":"保定市"},{"province_id":2,"name":"张家口市"},{"province_id":2,"name":"承德市"},{"province_id":2,"name":"沧州市"},{"province_id":2,"name":"廊坊市"},{"province_id":2,"name":"衡水市"}]},{"name":"陕西省","cities":[{"province_id":3,"name":"西安市"},{"province_id":3,"name":"铜川市"},{"province_id":3,"name":"宝鸡市"},{"province_id":3,"name":"咸阳市"},{"province_id":3,"name":"渭南市"},{"province_id":3,"name":"延安市"},{"province_id":3,"name":"汉中市"},{"province_id":3,"name":"榆林市"},{"province_id":3,"name":"安康市"},{"province_id":3,"name":"商洛市"}]},{"name":"山东省","cities":[{"province_id":4,"name":"济南市"},{"province_id":4,"name":"青岛市"},{"province_id":4,"name":"淄博市"},{"province_id":4,"name":"枣庄市"},{"province_id":4,"name":"东营市"},{"province_id":4,"name":"烟台市"},{"province_id":4,"name":"潍坊市"},{"province_id":4,"name":"济宁市"},{"province_id":4,"name":"泰安市"},{"province_id":4,"name":"威海市"},{"province_id":4,"name":"日照市"},{"province_id":4,"name":"莱芜市"},{"province_id":4,"name":"临沂市"},{"province_id":4,"name":"德州市"},{"province_id":4,"name":"聊城市"},{"province_id":4,"name":"滨州市"},{"province_id":4,"name":"菏泽市"}]}
            params.each do |pr|
              province = Province.create(name: pr[:name])
              pr[:cities].each do |c|
                province.cities.create(province_id: c[:province_id], name: c[:name])
              end
            end
        end
    end
end