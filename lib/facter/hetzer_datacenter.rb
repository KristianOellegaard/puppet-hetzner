Facter.add("hetzner_datacenter") do
  setcode do
    Facter::Util::Resolution.exec('traceroute -w 0.5 hetzner.de | grep -o -e 'rz[0-9]*' | tail -n 1')
  end
end
