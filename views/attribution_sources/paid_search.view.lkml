view: paid_search {
  derived_table: {
    datagroup_trigger:attribution_channel
    sql: select '360.cn'as channel,  'Paid Search' as source UNION ALL
      select 'adwords'as channel,  'Paid Search' as source UNION ALL
      select 'babylon'as channel,  'Paid Search' as source UNION ALL
      select 'centrum.cz'as channel,  'Paid Search' as source UNION ALL
      select 'conduit'as channel,  'Paid Search' as source UNION ALL
      select 'duckduckgo'as channel,  'Paid Search' as source UNION ALL
      select 'excite.com'as channel,  'Paid Search' as source UNION ALL
      select 'google.com'as channel,  'Paid Search' as source UNION ALL
      select 'it.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'mail.google.com'as channel,  'Paid Search' as source UNION ALL
      select 'najdi'as channel,  'Paid Search' as source UNION ALL
      select 'onet'as channel,  'Paid Search' as source UNION ALL
      select 'rambler'as channel,  'Paid Search' as source UNION ALL
      select 'search.smt.docomo.ne.jp'as channel,  'Paid Search' as source UNION ALL
      select 'sogou.com'as channel,  'Paid Search' as source UNION ALL
      select 'tr.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'vn.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'yandex'as channel,  'Paid Search' as source UNION ALL
      select 'alice'as channel,  'Paid Search' as source UNION ALL
      select 'baidu'as channel,  'Paid Search' as source UNION ALL
      select 'ch.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'cse.google.com'as channel,  'Paid Search' as source UNION ALL
      select 'ecosia.org'as channel,  'Paid Search' as source UNION ALL
      select 'fi.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'googlemybusiness'as channel,  'Paid Search' as source UNION ALL
      select 'kvasir'as channel,  'Paid Search' as source UNION ALL
      select 'mail.rambler.ru'as channel,  'Paid Search' as source UNION ALL
      select 'naver'as channel,  'Paid Search' as source UNION ALL
      select 'onet.pl'as channel,  'Paid Search' as source UNION ALL
      select 'rambler.ru'as channel,  'Paid Search' as source UNION ALL
      select 'search.ukr.net'as channel,  'Paid Search' as source UNION ALL
      select 'sp-web.search.auone.jp'as channel,  'Paid Search' as source UNION ALL
      select 'tut.by'as channel,  'Paid Search' as source UNION ALL
      select 'wap.sogou.com'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.by'as channel,  'Paid Search' as source UNION ALL
      select 'aol'as channel,  'Paid Search' as source UNION ALL
      select 'biglobe'as channel,  'Paid Search' as source UNION ALL
      select 'cl.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'daum'as channel,  'Paid Search' as source UNION ALL
      select 'email.seznam.cz'as channel,  'Paid Search' as source UNION ALL
      select 'firmy.cz'as channel,  'Paid Search' as source UNION ALL
      select 'hk.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'lite.qwant.com'as channel,  'Paid Search' as source UNION ALL
      select 'mail.yandex.ru'as channel,  'Paid Search' as source UNION ALL
      select 'naver.com'as channel,  'Paid Search' as source UNION ALL
      select 'pe.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'se.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'secureurl.ukr.net'as channel,  'Paid Search' as source UNION ALL
      select 'startsiden'as channel,  'Paid Search' as source UNION ALL
      select 'tw.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'webmaster.yandex.ru'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.com'as channel,  'Paid Search' as source UNION ALL
      select 'ar.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'biglobe.co.jp'as channel,  'Paid Search' as source UNION ALL
      select 'cn.bing.com'as channel,  'Paid Search' as source UNION ALL
      select 'daum.net'as channel,  'Paid Search' as source UNION ALL
      select 'eniro'as channel,  'Paid Search' as source UNION ALL
      select 'fr.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'id.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'lycos'as channel,  'Paid Search' as source UNION ALL
      select 'malaysia.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'news.google.com'as channel,  'Paid Search' as source UNION ALL
      select 'ph.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'search-results'as channel,  'Paid Search' as source UNION ALL
      select 'seznam'as channel,  'Paid Search' as source UNION ALL
      select 'startsiden.no'as channel,  'Paid Search' as source UNION ALL
      select 'uk.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'websearch.rakuten.co.jp'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.com.tr'as channel,  'Paid Search' as source UNION ALL
      select 'ask'as channel,  'Paid Search' as source UNION ALL
      select 'biglobe.ne.jp'as channel,  'Paid Search' as source UNION ALL
      select 'cnn'as channel,  'Paid Search' as source UNION ALL
      select 'de.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'es.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'globo'as channel,  'Paid Search' as source UNION ALL
      select 'in.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'm.baidu.com'as channel,  'Paid Search' as source UNION ALL
      select 'msn'as channel,  'Paid Search' as source UNION ALL
      select 'nl.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'pl.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'search.aol.co.uk'as channel,  'Paid Search' as source UNION ALL
      select 'seznam.cz'as channel,  'Paid Search' as source UNION ALL
      select 'suche.aol.de'as channel,  'Paid Search' as source UNION ALL
      select 'ukr'as channel,  'Paid Search' as source UNION ALL
      select 'yahoo'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.fr'as channel,  'Paid Search' as source UNION ALL
      select 'at.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'bing'as channel,  'Paid Search' as source UNION ALL
      select 'co.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'dk.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'espanol.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'go.mail.ru'as channel,  'Paid Search' as source UNION ALL
      select 'incredimail'as channel,  'Paid Search' as source UNION ALL
      select 'm.naver.com'as channel,  'Paid Search' as source UNION ALL
      select 'msn.com'as channel,  'Paid Search' as source UNION ALL
      select 'no.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'qwant'as channel,  'Paid Search' as source UNION ALL
      select 'search.aol.com'as channel,  'Paid Search' as source UNION ALL
      select 'sg.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'terra'as channel,  'Paid Search' as source UNION ALL
      select 'us.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'yahoo.co.jp'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.kz'as channel,  'Paid Search' as source UNION ALL
      select 'au.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'br.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'comcast'as channel,  'Paid Search' as source UNION ALL
      select 'dogpile'as channel,  'Paid Search' as source UNION ALL
      select 'exalead.com'as channel,  'Paid Search' as source UNION ALL
      select 'google'as channel,  'Paid Search' as source UNION ALL
      select 'm.search.naver.com'as channel,  'Paid Search' as source UNION ALL
      select 'mx.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'ntp.msn.com'as channel,  'Paid Search' as source UNION ALL
      select 'qwant.com'as channel,  'Paid Search' as source UNION ALL
      select 'search.google.com'as channel,  'Paid Search' as source UNION ALL
      select 'so.com'as channel,  'Paid Search' as source UNION ALL
      select 'th.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'virgilio'as channel,  'Paid Search' as source UNION ALL
      select 'yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.ru'as channel,  'Paid Search' as source UNION ALL
      select 'auone'as channel,  'Paid Search' as source UNION ALL
      select 'ca.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'dogpile.com'as channel,  'Paid Search' as source UNION ALL
      select 'google-play'as channel,  'Paid Search' as source UNION ALL
      select 'm.sogou.com'as channel,  'Paid Search' as source UNION ALL
      select 'nz.search.yahoo.com'as channel,  'Paid Search' as source UNION ALL
      select 'rakuten'as channel,  'Paid Search' as source UNION ALL
      select 'sogou'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.ua'as channel,  'Paid Search' as source UNION ALL
      select 'avg'as channel,  'Paid Search' as source UNION ALL
      select 'rakuten.co.jp'as channel,  'Paid Search' as source UNION ALL
      select 'yandex.uz'as channel,  'Paid Search' as source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  set: detail {
    fields: [
      channel,
      source
    ]
  }
}
