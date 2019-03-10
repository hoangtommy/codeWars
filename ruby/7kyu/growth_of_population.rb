# Reflection: use a simple loop with variables to track everything
#

def nb_year(p0, percent, aug, p)
  year = 0
  population = p0
  until population >= p
    population += ((population * percent/100) + aug).floor
    year += 1
  end
  year
end
