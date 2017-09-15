class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)

    "#{bottle_number.count.capitalize} #{bottle_number.unit} of beer on the wall, "\
    "#{bottle_number.count} #{bottle_number.unit} of beer.\n"\
    "#{bottle_number.action}, "\
    "#{bottle_number.successor.count} #{bottle_number.successor.unit} of beer on the wall.\n"
  end

  class BottleNumber
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def action
      if number == 0
        'Go to the store and buy some more'
      else
        "Take #{pronoun} down and pass it around"
      end
    end

    def successor
      if number == 0
        BottleNumber.new(99)
      else
        BottleNumber.new(number - 1)
      end
    end

    def count
      if number == 0
        'no more'
      else
        number.to_s
      end
    end

    def pronoun
      if number == 1
        'it'
      else
        'one'
      end
    end

    def unit
      if number == 1
        'bottle'
      else
        'bottles'
      end
    end
  end
end
