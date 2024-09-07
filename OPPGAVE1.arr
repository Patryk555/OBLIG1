norske-kroner = 100

fun krone-til-euro(n):
  euro = 0.084
  c = num-to-string-digits(n * euro,2)
  (num-to-string(n) + " NOK er: " + c + "€")
  where:
  krone-til-euro(67) is "67 NOK er: 5.63€"
  krone-til-euro(70) is "70 NOK er: 5.88€"
  krone-til-euro(80) is "80 NOK er: 6.72€"
end

fun krone-til-dollar(n):
  dollar = 0.09
  d = num-to-string-digits(n * dollar,2)
  (num-to-string(n) + " NOK er: " + d + "$")
where:
    krone-til-dollar(67) is "67 NOK er: 6.03$"
    krone-til-dollar(70) is "70 NOK er: 6.30$"
    krone-til-dollar(80) is "80 NOK er: 7.20$"
end