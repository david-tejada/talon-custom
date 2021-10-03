os: linux
app: Org.gnome.Nautilus
-
tag(): user.file_manager

go {user.folder}:
  insert(user.folder)
  key(enter)
