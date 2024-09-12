offset = 3

fun Tegne(farge):
  
  farge1 = if farge == false:
    "black"
  else: 
    "blue"
    end
  
  farge3 = if farge == false:
    "black"
  else:
    "red"
    end
    
  farge4 = if farge == false:
      "black" 
    else:
    "orange"
      end
  farge5 = if farge == false:
      "black" 
    else:
    "green"
      end
  
    block:
    
      a = circle(30, "outline", farge1)
      b = circle(29, "outline", farge1)
      c = circle(28, "outline", farge1)
      
      d = circle(30, "outline", "black")
      e = circle(29, "outline", "black")
      f = circle(28, "outline", "black")
      
      g = circle(30, "outline", farge3)
      h = circle(29, "outline", farge3)
      i = circle(28, "outline", farge3)

      j = circle(30, "outline", farge4)
      k = circle(29, "outline", farge4)
      l = circle(28, "outline", farge4)

      m = circle(30, "outline", farge5)
      n = circle(29, "outline", farge5)
      o = circle(28, "outline", farge5)
    
      var oli = empty-scene(216, 123)

      oli := place-image(a,45,45,oli)
      oli := place-image(b,45,45,oli)
      oli := place-image(c,45,45,oli)
    
      oli := place-image(d,105,45,oli)
      oli := place-image(e,105,45,oli)
      oli := place-image(f,105,45,oli)
    
      oli := place-image(j,75 + offset,75 + offset,oli)
      oli := place-image(k,75 + offset,75 + offset,oli)
    oli := place-image(l,75 + offset,75 + offset,oli)
    
      oli := place-image(g,165 + (offset * 2),45,oli)
      oli := place-image(h,165 + (offset * 2),45,oli)
      oli := place-image(i,165 + (offset * 2),45,oli)
    
      oli := place-image(m,135 + (offset * 2),75 + offset,oli)
      oli := place-image(n,135 + (offset * 2),75 + offset,oli)
      oli := place-image(o,135 + (offset * 2),75 + offset,oli)
      
      oli
    end
  end
      
      
      

      

