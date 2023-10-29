# dokcerのimage作成
docker-compose build --no-cache
# container作成とdb作成
docker-compose run web rails db:create
# container起動
docker-compose up -d
# アプリ起動
open http://localhost:3000/
