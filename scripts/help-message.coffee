# Description:
#   bot機能のコマンドまとめを表記するbot
# Author:
#   raoka0000


module.exports = (robot) ->
  robot.respond /(-help|-h|ヘルプ|詳細)/i, (msg) ->
    text = """
    ああああ
    _チョコボットとDMで会話する際には"cbot"この単語を消してください_
     *バスの混み具合を確認する*
     　`cbot (bus or バス)`
     　_ios版ではキャッシュが原因で最新の画像が送られない可能性があります。_
     　_解決するには 設定 -> slack -> Reset Cache on Next Launch_　
     *メンバーの中でくじ引きを行う*
      `cbot (lottery or lot or くじ or 抽選)`
     *メンバーの中で順番を決める*
      `cbot (order or ord or リスト or 順番)`
     *天気を聞く*
     　`(今日 or 明日 or 明後日)の天気`
     *電車の遅延を確認する*
         `cbot train kyoto`
          <http://transit.yahoo.co.jp/traininfo/detail/267/0|ここ>から直接読み取ってます。不足であれば教えてください。
     *時間割を出す*
     　`cbot (tt or timetable or 時間割)`
     　オプション
          `-test` [テスト期間中の時間割にする]
     *可愛いチョコボを出す*
     　`cbot (AA or aa)`
     *botのコメントを削除したいとき*
      そのコメントに :trash: (trash)<-リアクションをつけることで削除することができます。
    """
    data =
      attachments: [
        text: text
        color: "ffbf00"
        mrkdwn_in: ["text"]
      ]
    msg.send data