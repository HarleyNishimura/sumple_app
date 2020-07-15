# 記憶したURL（もしくはデフォルト値）にリダイレクト

def redirect_back_or(default)
redirect_to(session[:forwarding_url] || default)
session.delete(:forwarding_url)
end

# アクセスしようとしたURLを覚えておく
def store_location
session[:forwarding_url] = request.original_url if request.get?              # :forwarding_urlキーにリクエスト先のURLを、GETリクエストが送られた時だけ代入
end