
class  Starter
  attr_accessor :my_long_string
  def initialize
    @my_long_string = <<-STRING
      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      Cras sed vulputate ipsum. Suspendisse commodo sem arcu.
      Donec a nisi elit. Nullam eget nisi commodo, volutpat
      quam a, viverra mauris. Nunc viverra sed massa a condimentum.
      Suspendisse ornare justo nulla, sit amet mollis eros sollicitudin et.
      Etiam maximus molestie eros, sit amet dictum
      dolor ornare bibendum. Morbi ut massa nec lorem tincidunt elementum vitae id magna.
      Cras et varius mauris, at pharetra mi.
    STRING
  end
end

 class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end
end

p [2, 3, 5].inject(1, &:+)
