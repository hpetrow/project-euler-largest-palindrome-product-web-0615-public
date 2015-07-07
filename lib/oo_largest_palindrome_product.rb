# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def answer
    max_product = 0

    999.downto(100) { |n1|
      999.downto(100) { |n2|
        product = n1 * n2
        if self.isPalindrome(product) && product > max_product
          max_product = product
        end
      }
    }
    max_product
  end

  def isPalindrome(n)
    n.to_s == n.to_s.reverse
  end
end
