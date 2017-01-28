# micro-schema
以下が動作する必要がある

* fop

```
git clone git@github.com-kobabasu:kobabasu/micro-schema.git schema
```

必要があればdevelopブランチを使う  
`git checkout develop`

## mysqlworkbench
1. mysqlworkbenchでモデルを作成
1. File -> Export -> Forward Engineer SQL CREATE Script...で出力
1. できたsqlファイルを`mysql -h 0.0.0.0 -uroot -ppass < dump.sql`
1. xmlに出力 `mysqldump -XR -h0.0.0.0 -uroot -ppass sample > dump.xml`
1. dump.xmlをmysqldump.xslにコピー

## run
1. schemaディレクトリ以下で`gulp schema:tables:build`を実行
1. PDFが開くので内容を確認

## check
もしエラーが発生したらfopを直で実行する

1. schema/tables/source/pdfへ移動
1. `fop -c ../../../fop.xconf -xml ../../../mysqldump.xml -xsl index.xsl -pdf ~/Desktop/test.pdf`
1. エラー内容を確認

## gulp
1. gulp/dir.es6.sampleをコピーしgulp/dir.es6を作成
1. gulp/dir.es6を変更
1. documentRootでgulp schema:tables:pdfを実行し動作するか確認
1. documentRootのgulpfile.babel.js内で読み込み
