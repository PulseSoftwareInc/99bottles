class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{count(number).capitalize} #{unit(number)} of beer on the wall, #{count(number)} #{unit(number)} of beer.\n#{action(number)}, #{count(successor(number))} #{unit(successor(number))} of beer on the wall.\n"
  end

  private

  def action(number)
    if number == 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def count(number)
    if number == 0
      'no more'
    else
      number.to_s
    end
  end

  def pronoun(number)
    if number == 1
      'it'
    else
      'one'
    end
  end

  def unit(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end
end
