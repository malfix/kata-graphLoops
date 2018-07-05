class Exercise
  def contain_loops(*links)
    @map = Hash[*links.flatten]
    @map.each do |k,v|
      return true if check_path(k, {})
    end
    return false
  end

  def check_path(start, checked)
    return true if checked[start]
    return false unless start
    checked[start] = true
    check_path(@map[start], checked.dup)
  end
end
