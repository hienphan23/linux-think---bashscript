echo 'start up all everyday app'

list_app_name=('netbeans', 'jdk', 'terminator', 'vlc', 'vim', 'adobe acrobat'
	, 'chrome', 'kanbanflow', 'libreoffice')
for i in {0..${#list_app_name[@]} - 1} do
	echo 'start ' ${list_app_name[i]} '...'
        sudo ${list_app_name[i]}
done

