Facter.add("hetzner_model") do
  setcode do
    is_virtual = Facter.value('is_virtual')
    case is_virtual
    when "false"
      cpu = Facter.value('processor0')
      model = case cpu
        when /2600/ then "EX 4/4S"
        when /920/ then "EX 5"
        when /E31245/ then "EX 6"
        when /E31275/ then "EX 8"
        when /3930K/ then "EX 10"
      end
      model
    end
  end
end