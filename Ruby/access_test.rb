class AccessTest
  public
  def pub
    puts "pub is a public method"
  end

  private
  def priv
    puts "priv is a private method"
  end
end

access = AccessTest.new
access.pub
access.priv
# 別解
# class AccessTest
#   def pub
#     puts ""
#   end
#   def priv
#     puts ""
#   end
#   public :pub
#   private :priv
# end