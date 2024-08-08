#!/bin/bash
set -e

# サーバPIDファイルを削除
rm -f /myapp/tmp/pids/server.pid

# コンテナのメインプロセスを実行
exec "$@"
