# hardware_platform.rb
Facter.add('hardware_platform') do
    confine :kernel => 'Linux'
    setcode 'uname --hardware-platform'
end
