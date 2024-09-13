#Her hentes det tabell fra Google Sheets, tabell inneholder navn, mail og annen informasjon
include shared-gdrive("dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

import gdrive-sheets as GS
sheet = GS.load-spreadsheet("1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g")
tabell = load-table: id :: Number, name :: String, lastname :: String, email :: String, gender :: String, ip :: String, age :: Number
  source: sheet.sheet-by-name("o1-oppg3", true)
end

#Her vises det tabell som output, den skjekker data i rekkefølge. Denne tabellen er en oversikt og viser de som er 30 år eller eldre samt 80år eller yngre printer ut navn og alder

fun mellom-alder(t):
  filter-with(t, lam(r): (r["age"] <= 80) and (r["age"] >= 30) end)
    .select-columns([list: "name", "age"])
end
#Denne kjører funksjonen som printer resultatet som outuput(tabell med navn og alder)
mellom-alder(tabell)

#Funksjonen filtrerer data fra tabellen, (argument vs) legger data i rekkefølge 
fun young-vs-old(t,vs):
  so = order-by(tabell, "age", vs)
  so.row-n(0)["name"] + " " + so.row-n(0)["lastname"] + " " + so.row-n(0)["email"]

end
#Denne viser den yngste personen og printer navnet og mail
young-vs-old(tabell,true)
#Denne viser den eldste personen og printer navnet og mail, det er en til med samme alderen men jeg vet ikke hvordan jeg kan få programmet til å printe denne personen i tillegg
young-vs-old(tabell,false)

#Siste funksjonen summerer all data fra tabellen fra kolonnen "age" og legger verdi i kolonnen "dd), til slutt deler den summen av det som er antallet basert på "t.length()"
fun gjennomsnitt(t):
  block:
    var dd = 0
    t.get-column("age").map(lam(x): dd := dd + x end)
    dd / t.length()
  end
end
#Når en skriver inn input "gjennomsnitt(tabell) i terminalen, så får man output som svar