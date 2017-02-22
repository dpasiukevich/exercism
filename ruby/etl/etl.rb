class ETL
  def self.transform(old)
    old.each_with_object({}) do |(k,v),res|
      v.map { |s| res[s.downcase] = k }
    end
  end
end
