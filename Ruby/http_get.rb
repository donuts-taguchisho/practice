require "net/http"
require "uri"
url  = URI.parse("https://www.ruby-lang/org/ja/")
http = Net::HTTP.new(url.host,url.port)
http.use_ssl = true
doc = http.get(url, path)
puts doc.body

# 1~2: net/http,uriライブラリを読み込んだ
# これによってNet::HTTPクラスとURIモジュールを使える
# ３行目でURIモジュールのparseメソッドを使ってURLの文字列を解析する
# 戻り値は文字列を解析した結果として得られたURI：：HTTPSクラスのインスタンス
# ４行目でNet::HTTPクラスのnewメソッドにオブジェクトを作成している
# ５行目は通信を暗号化するための指定
# スキームがhttpsの場合に必要
# ６行目でNet::HTTP#getメソッドにパスを指定してドキュメントを取得している
# ①ホスト名とポート番号を使って、サーバと通信するための通信路（ソケットといいます）を作成する
# ②OpenSSLライブラリを使ってソケットを暗号化する準備をする
# ③パスを使って、要求メッセージを表現するNet::HTTPRequestオブジェクトを作成する
# ④ソケットに要求メッセージを書き込む
# ⑤ソケットからデータを読み取って、応答メッセージを表現するNet::HTTPResponseオブジェクトに格納する
# ⑥Net::HTTPResponseオブジェクトの機能によって応答メッセージを解析し、ドキュメントに相当する部分を取り出す