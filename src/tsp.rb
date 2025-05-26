INF = 1 << 30

def tsp(n, graph)
  dp = Array.new(1 << n) { Array.new(n, INF) }
  dp[1][0] = 0  # mulai dari node 0, mask 1 (hanya 0 yang dikunjungi)

  (1 << n).times do |mask|
    n.times do |u|
      next if (mask & (1 << u)) == 0
      n.times do |v|
        next if (mask & (1 << v)) != 0
        next_cost = dp[mask][u] + graph[u][v]
        next_mask = mask | (1 << v)
        if dp[next_mask][v] > next_cost
          dp[next_mask][v] = next_cost
        end
      end
    end
  end

  res = INF
  n.times do |u|
    cost = dp[(1 << n) - 1][u] + graph[u][0]
    res = [res, cost].min
  end

  res
end

# === TANYA NAMA FILE DI TERMINAL ===
print "Masukkan nama file input: "
input_file = gets.strip

begin
  lines = File.readlines(input_file).map(&:strip)
rescue
  puts "Gagal membaca file '#{input_file}'"
  exit
end

n = lines[0].to_i
graph = lines[1..n].map { |line| line.split.map(&:to_i) }

# === JALANKAN TSP DAN PRINT HASIL ===
puts "Minimum tour cost: #{tsp(n, graph)}"
