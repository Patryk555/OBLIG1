include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

import gdrive-sheets as GS
sheet = GS.load-spreadsheet("1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g")
tabell  = load-table: id :: Number, name :: String, lastname :: String, email :: String, gender :: String, ip :: String, age :: Number
  source: sheet.sheet-by-name("o1-oppg3", true)
end

fun mellom-alder(t):
  filter-with(t, lam(r): (r["age"] < 80) and (r["age"] > 30) end).select-columns([list:"name","age"])
end


mellom-alder(tabell)