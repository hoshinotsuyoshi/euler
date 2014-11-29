class Euler004
  def self.solve
    # brute force
    (100..999).to_a.reverse.each do |n| # ABC
      palindrome = (n.to_s + n.to_s[2] + n.to_s[1] + n.to_s[0]).to_i # ABCCBA
      (100..999).to_a.reverse.each do |d|
        return palindrome if (palindrome % d).zero? && (palindrome / d).between?(100, 999)
      end
    end
  end
end
