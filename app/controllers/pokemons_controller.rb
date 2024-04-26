class PokemonsController < ApplicationController

    def show
    end

    def index
      @pokemon = Pokemon.new

      require 'net/http'
      require 'uri'

      # クライアントを用意
      uri = URI.parse('https://pokeapi.co/api/v2/') #URI.parseは、URIオブジェクトを生成するメソッド。
      http = Net::HTTP.new(uri.host, uri.port) # HTTPクライアントを生成し、引数にホスト名とポート番号を指定している。
      http.use_ssl = true # httpsで通信をする場合はuse_sslをtrueにする

      # リクエストの内容
      pokemon_id = params[:id] # 変数指定、後で下記リンクを動的にする際に使用
      get_request = Net::HTTP::Get.new("https://pokeapi.co/api/v2/pokemon/ditto", 'content-Type' => 'application/json') #JSON指定

      #レスポンスの設定
      response = http_client.request(get_request) #http_clientオブジェクトを使用してget_requestを実行
      @data = JSON.parse(response.body)
    end

end
