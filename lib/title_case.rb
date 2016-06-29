require("pry")

class String
  define_method(:title_case) do
    arr = self.split.map!(&:capitalize)
    word = ["And", "Or", "Yet", "But", "Nor", "For"]
    arr.each do |words|
      if word.include?(words)
        words.downcase!()
      end
    end
    arr.join(" ")
  end
end
