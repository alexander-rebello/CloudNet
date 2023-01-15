# CloudNet
CloudNet v3


## Updated launcher
The official CloudNet launcher has a misconfiguration which causes Vault, if used, to be loaded before the CloudPerms Module. Because of that, Vault won't recognise cperms as the active permission system. It does recognise the plugin itself, but still will try to get the permissions from SuperPerms, the standard permission system of bukkit. All of this may cause trouble when other plugins need to check permissions through fault.

To solve this, just replace the dedfault launcher.jar with the one in this repo. On restart, CloudNet will replace the cperms module automatically. Note that you have to activate the ddev mode in the launcher.cnl file (l. 7).

```var cloudnet.launcher.dev-mode true```


## Auto start scripts
These are some scripts to automatically restart the cloud. When the cloudd shuts down, regardless of the cause, there will be a 10 second time intervall to prevent the cloud from restarting. This is done by pressing enter, while the countdown is shown. Note that you have to start the cloud by executing the start.sh file, but the auto_start.sh file still needs to be in the same directory.
