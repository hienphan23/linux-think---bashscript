# script to install app as list of name:
list_app_name=('netbeans', 'jdk', 'terminator', 'vlc', 'vim', 'adobe acrobat')
for i in {0..${#list_app_name[@]} - 1} do
	sudo apt-get install ${list_app_name[i]}
done

# install netbeans : jdk8 oracle, netbeeans
# https://websiteforstudents.com/how-to-install-netbeans-on-ubuntu-16-04-17-10-18-04/
# install terminator : ok
# install vlc : https://linuxconfig.org/how-to-install-latest-vlc-media-player-on-ubuntu-18-04-bionic-beaver-using-ppa
# install acrobat: 
