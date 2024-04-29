module ApplicationHelper

  def flash_background_color(type)
    case type.to_sym
     when :notice then "bg-green-500"
      when :alert  then "bg-red-500"
      when :error  then "bg-yellow-500"
    else "bg-gray-500"
    end
  end

  # def get_pokemon_japanese_name(english_name)
  #   get_jp_request = Net::HTTP::Get.new("https://pokeapi.co/api/v2/pokemon-species/#{@birthdayI}", 'content-Type' => 'application/json') #JSON指定
  #   jp_response = http.request(get_jp_request) #http_clientオブジェクトを使用してget_requestを実行

  #   @jp_data = JSON.parse(jp_response.body)

  #   for name_info in data['names']:
  #     if name_info['language']['name'] == 'ja-Hrkt':
  #       return name_info['name']
  #     end
  #   # each data['names'] do |name|

  #   end
  # end

end
