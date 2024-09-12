#OPG 1A

#Navngir funksjon og spesifiserer en input(n)
fun krone-til-euro(n):
  
  #Lagrer valutakurs i en variabel
  euro = 0.084 
  
  #Ganger nok med kurs og omgjør nummer til tekst med 2 desimaler
  c = num-to-string-digits(n * euro, 2)
  
  #Printer resultatet ovenfor i en formatert 
  (num-to-string(n) + " NOK er: " + c + "€")

#Tester at funksjonen gir forventet svar
where:
  krone-til-euro(67) is "67 NOK er: 5.63€"
  krone-til-euro(70) is "70 NOK er: 5.88€"
  krone-til-euro(80) is "80 NOK er: 6.72€"
end


#OPG 1B

#Nøyaktig samme som over, bare byttet euro til dollar og verdien på kursen
fun krone-til-dollar(n): input(n)

  dollar = 0.09 

  c = num-to-string-digits(n * dollar, 2) 
  (num-to-string(n) + " NOK er: " + c + "$")
  
where:
  krone-til-dollar(67) is "67 NOK er: 6.03$"
  krone-til-dollar(70) is "70 NOK er: 6.30$"
  krone-til-dollar(80) is "80 NOK er: 7.20$"
end


#OPG 1C

#Navngir funksjon, nå med to inputs slik at vi kan velge ønsket kurs
fun krone-veksler(n, k):
  
  #Sjekker om verdien av k er "USD"
  if k == "USD":
    
    #Sender mengden NOK inn i funksjon fra 1B
    krone-til-dollar(n)
    
  #Hvis k ikke var "USD", så sjekker vi om den var "EURO"
  else if k == "EURO":
    
    #Sender mengden NOK inn i funksjon fra 1A
    krone-til-euro(n)
    
  #Hvis k ikke var "USD" eller "Euro" så skriver vi feil  
  else:
    ("FEIL")
  end
end