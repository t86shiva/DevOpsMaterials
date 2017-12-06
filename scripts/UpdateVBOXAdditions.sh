# for Centos, use 
#sudo yum -y update
# for linuxes use
sudo apt-get update -y && apt-get upgrade -y 
cd /opt
sudo wget -c http://download.virtualbox.org/virtualbox/5.1.22/VBoxGuestAdditions_5.1.22.iso \
                       -O VBoxGuestAdditions_5.1.22.iso
sudo mount VBoxGuestAdditions_5.1.22.iso -o loop /mnt
sudo "echo y|sh /mnt/VBoxLinuxAdditions.run --nox11"
umount /mnt
#sudo rm *.iso
# for Centos
#sudo /etc/init.d/vboxadd setup
#sudo chkconfig --add vboxadd
#sudo chkconfig vboxadd on