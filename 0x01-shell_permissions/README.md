#These are a list of bash-shell scripts for manipulating permisions of files and directories


0-iam_betty = This script changes the current user to user "betty". Assuming "betty" exist as a user on the system

1-who_am_i = It prints the current effective user's username on the screen

2-groups = this prints all groups that the current user belongs to

3-new_owner = This changes the owner of a file to a new specified owner

4-empty = This creates an empty file with the name 'hello'

5-execute = This adds execute permission to the current owner of the file

6-multiple_permissions = This script adds execute permissions the owner and the group owner. And adds read permission the other users to the file 'hello'

7-everybody = This scritp add execute permissions the owner, the group owner and the other users to the file 'hello'

8-James_Bond = This sets not permission to the user and group user but allows all permissions for other user.

9-John_Doe = This sets the mode of the file 'hello' to a specified mode

10-mirror_permissions = This copies the permissions of file 'olleh' to file 'hello'

11-directories_permissions = This script add execute permission to all subdirectories of the current directory for the owner, the group owner and all other users. Regualar files are not affected.

12-directory_permissions = This creates a file named 'my_dir' with prespecified permissions

13-change_group = This changes the group owner to school for the 'hello' file

100-change_owner_and_group = This script changes the owner to vincent and the group owner staff for all files and directories in the current directory

101-symbolic_link_permissions = This script changes the owner and group owner of '_hello' _. to user 'vincent' and group owner 'staff'

102-if_only = This script changes the owner of file 'hello' to 'betty' only if it is owned by user 'guillaume'

103-Star_Wars = This script will play the StarWars episode IV

#end of README.md
