# RB-libvlc
This project wraps libvlc, the open-source multimedia library behind VLC Media Player. It is designed and tested on 
Windows 7 using REALstuio 2011R4.3. Other platforms supported by libvlc should work, but have not been tested.

Be sure to [consult the documentation](https://github.com/charonn0/RB-libvlc/wiki/libvlc) if you're not sure how to do something.

##Synopsis
There are two main modes of operation: using the [VLCPlayer](https://github.com/charonn0/RB-libvlc/wiki/libvlc.VLCPlayer) class to play media without a GUI and the [VLCMediaPlayer](https://github.com/charonn0/RB-libvlc/wiki/libvlc.VLCMediaPlayer) which provides a GUI. libvlc also supports playlists through a separate [PlayList](https://github.com/charonn0/RB-libvlc/wiki/libvlc.PlayLists) interface.

##Example
```vbnet
 Dim vlc As New VLCPlayer
 vlc.Media = GetFolderItem("C:\example\music.mp3")
 vlc.Play()
```
