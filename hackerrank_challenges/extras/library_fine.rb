def libraryFine(d1, m1, y1, d2, m2, y2)
  return 10000 if y1 > y2
  return (d1 - d2) * 15 if (m1 == m2 && y1 == y2 && d1 > d2)
  return (m1 - m2) * 500 if (m1 > m2 && y1 == y2)
  return 0
end
