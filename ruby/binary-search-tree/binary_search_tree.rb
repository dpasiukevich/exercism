class Bst

  VERSION = 1

  def initialize(n)
    @array = ['LUL',n]
    @cur = 1
  end

  def insert(n)
    insert_at(1,n)
  end

  def left
    @cur = 2 * @cur
    self
  end

  def right
    @cur = 2 * @cur + 1
    self
  end

  def data
    temp, @cur = @cur, 1
    @array[temp]
  end

  def each
    return enum_for(:each) unless block_given?

    @sorted_array = []

    traverse(1)

    @sorted_array.each { |e| yield e }
  end

  private
  def insert_at(i,n)
    if @array[i]
      if n > @array[i]
        insert_at(2*i+1,n)
      else
        insert_at(2*i,n)
      end
    else
      @array[i] = n
    end
  end

  def traverse(index)
    if @array[index*2]
      traverse(index*2)
    end

    @sorted_array << @array[index]

    if @array[index*2+1]
      traverse(index*2+1)
    end
  end
end
