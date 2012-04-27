Facter.add("hetzner_model") do
  setcode do
    is_virtual? = Facter.value('is_virtual')
    case is_virtual?
    when false
      cpu = Facter.value('processor0')
      case cpu
      when cpu.include? 'E31245'
        return "EX 6"
      when cpu.include? 'E31275'
        return "EX 8"
      end
    when true
      return false
    end
  end
end