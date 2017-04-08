def minimum_pancake_flips(row, k, x = 0, flips = 0)
  return flips if row.uniq == [1]
  return nil if flips > (0...(row.size - k)).size

  (x..(row.size - k)).
    map { |offset| minimum_pancake_flips(offset_xor(row, [1] * k, offset), k, x + 1, flips + 1) }.
    flatten.
    reject(&:nil?).
    min
end

def offset_xor(a, b, offset)
  d = a.dup
  c = a[offset..(offset + b.size - 1)]
  d[offset..(offset + b.size - 1)] = xor(c, b)

  d
end

def xor(a, b)
  a.each_with_index.map { |x, i| x^b[i] }
end
