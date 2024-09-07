fun olympisk():
  block:
  a = circle(30, "outline", "blue")
  b = circle(30, "outline", "black")
  c = circle(30, "outline", "red")
  d = circle(30, "outline", "orange")
  e = circle(30, "outline", "green")
  var oli = empty-scene(300,200)
oli := place-image(a,30,30,oli)
oli := place-image(b,95,30,oli)
oli := place-image(c,160,30,oli)
oli := place-image(d,62.5 ,68,oli)
oli := place-image(e,64 * 2 ,68,oli)
oli
end
end