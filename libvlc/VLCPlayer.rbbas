#tag Class
Class VLCPlayer
	#tag Method, Flags = &h0
		Function AddInterface(InterfaceName As String) As Boolean
		  Return libvlc_add_intf(mInstance.Handle, InterfaceName) = 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function AudioFilters() As libvlc.ModuleList
		  Return New libvlc.ModuleList(libvlc_audio_filter_list_get(VLCInstance.GetInstance.Handle))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function AudioOutputs() As libvlc.AudioOutputList
		  Dim p As Ptr = libvlc_audio_output_list_get(VLCInstance.GetInstance.Handle)
		  If p <> Nil Then Return New libvlc.AudioOutputList(p)
		  Raise New VLCException("Unable to get the list of audio output modules.")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  ' Constructs a new player instance
		  
		  mInstance = VLCInstance.GetInstance
		  mPlayer = libvlc_media_player_new(mInstance.Handle)
		  If mPlayer = Nil Then Raise New libvlc.VLCException("Unable to construct a player instance.")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Medium As libvlc.VLCMedium)
		  ' Constructs a new player instance from the passed media reference
		  
		  mInstance = Medium.Instance
		  mPlayer = libvlc_media_player_new_from_media(Medium.Handle)
		  If mPlayer = Nil Then Raise New libvlc.VLCException("Unable to construct a player instance.")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(FromPtr As Ptr, AddRef As Boolean)
		  ' Takes ownership of the passed player ref
		  
		  If FromPtr = Nil Then Raise New NilObjectException
		  If AddRef Then libvlc_media_player_retain(FromPtr)
		  mInstance = VLCInstance.GetInstance
		  mPlayer = FromPtr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  If mPlayer <> Nil Then libvlc_media_player_release(mPlayer)
		  mPlayer = Nil
		  mInstance = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EmbeddedWithin() As Integer
		  ' Returns an OS-specific handle to the window or control in which the player's video output is embedded.
		  ' Use the EmbedWithin method to specify the window or control.
		  
		  Return mEmbeddedWithin
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EmbedWithin(Parent As Integer)
		  ' Pass the OS-specific handle of a Window, ContainerControl, or RectControl as 'Parent'. The video output (if any) superimposes 
		  ' and obscures the Parent, and will move/resize automatically when the parent does.
		  
		  If mPlayer = Nil Then Raise New NilObjectException
		  #If TargetWin32 Then
		    libvlc_media_player_set_hwnd(mPlayer, Parent)
		  #ElseIf TargetMacOS
		    libvlc_media_player_set_nsobject(mPlayer, Parent)
		  #Else
		    libvlc_media_player_set_xwindow(mPlayer, Parent)
		  #endif
		  mEmbeddedWithin = Parent
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub EmbedWithin(Parent As RectControl)
		  ' Pass a subclass of rectcontrol as 'Parent'. The video output (if any) superimposes and obscures the Parent, and 
		  ' will move/resize automatically when the parent does.
		  
		  Me.EmbedWithin(Parent.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub EmbedWithin(Parent As Window)
		  ' Pass a subclass of Window (or a ContainerControl) as 'Parent'. The video output (if any) superimposes and obscures the Parent, and
		  ' will move/resize automatically when the parent does.
		  
		  Me.EmbedWithin(Parent.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCursorXY(Optional VideoIndex As Integer) As REALbasic.Point
		  ' Returns the mouse position relative to the video's unscaled size (i.e. not in screen pixels)
		  ' VLC supports multiple video streams. If you want a stream other than the first/only one, pass the index.
		  
		  If mPlayer = Nil Then Return Nil
		  Dim x, y As Integer
		  If libvlc_video_get_cursor(mPlayer, VideoIndex, x, y) <> 0 Then Return Nil
		  Return New REALbasic.Point(x, y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVideoDimensions(Optional VideoIndex As Integer) As REALbasic.Rect
		  ' Returns the video's unscaled dimensions. VLC supports multiple video streams. If you want a stream other 
		  ' than the first/only one, pass the index.
		  
		  If mPlayer = Nil Then Return Nil
		  Dim w, h As Integer
		  If libvlc_video_get_size(mPlayer, VideoIndex, w, h) <> 0 Then Return Nil
		  Return New REALbasic.Rect(0, 0, w, h)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Handle() As Ptr
		  Return mPlayer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Load(MediaFile As FolderItem) As libvlc.VLCPlayer
		  Return Load(MediaFile.URLPath)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Load(MediaURL As String) As libvlc.VLCPlayer
		  Dim m As New VLCMedium(MediaURL)
		  If m <> Nil Then Return New libvlc.VLCPlayer(m)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Media() As libvlc.VLCMedium
		  If mPlayer <> Nil Then
		    Dim p As Ptr = libvlc_media_player_get_media(mPlayer)
		    If p <> Nil Then Return p
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Media(Assigns NewMedium As libvlc.VLCMedium)
		  If mPlayer <> Nil Then libvlc_media_player_set_media(mPlayer, NewMedium.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MetaData() As libvlc.MetaData
		  If Media <> Nil Then
		    If Not Media.IsParsed Then Media.Parse
		    Return New libvlc.MetaData(Media)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  If mPlayer <> Nil Then libvlc_media_player_set_pause(mPlayer, 1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play()
		  If mPlayer <> Nil Then
		    If libvlc_media_player_play(mPlayer) <> 0 Then Raise New VLCException("The player cannot play the current media.")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resume()
		  If mPlayer <> Nil Then libvlc_media_player_set_pause(mPlayer, 0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAudioOutput(Index As Integer)
		  If mPlayer = Nil Then Raise New NilObjectException
		  Dim l As AudioOutputList = AudioOutputs
		  If l = Nil Then Raise New VLCException("No audio outputs detected!")
		  If libvlc_audio_output_set(mPlayer, l.Name(Index)) <> 0 Then Raise New VLCException("Unable to set the audio output to that index.")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetSubtitleFile(SubtitleFile As FolderItem) As Boolean
		  If mPlayer <> Nil Then Return libvlc_video_set_subtitle_file(mPlayer, SubtitleFile.AbsolutePath)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  If mPlayer <> Nil Then libvlc_media_player_stop(mPlayer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleIndex() As Integer
		  If mPlayer <> Nil Then Return libvlc_video_get_spu(mPlayer)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtitleIndex(Assigns NewIndex As Integer)
		  If mPlayer = Nil Then Return
		  If libvlc_video_set_spu(mPlayer, NewIndex) <> 0 Then Raise New VLCException("Unable to assign that subtitle index.")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Subtitles() As libvlc.TrackList
		  If mPlayer = Nil Then Return Nil
		  Dim p As Ptr = libvlc_video_get_spu_description(mPlayer)
		  If p <> Nil Then Return New libvlc.TrackList(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TakeSnapshot(Optional VideoIndex As Integer) As Picture
		  If mPlayer = Nil Then Return Nil
		  
		  Dim tmp As FolderItem = GetTemporaryFolderItem()
		  Dim r As REALbasic.Rect = GetVideoDimensions()
		  If libvlc_video_take_snapshot(mPlayer, VideoIndex, tmp.AbsolutePath, r.Width, r.Height) = 0 Then
		    Return Picture.Open(tmp)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleFullscreen()
		  If mPlayer <> Nil Then libvlc_toggle_fullscreen(mPlayer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleTeletext()
		  If mPlayer <> Nil Then libvlc_toggle_teletext(mPlayer)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function VideoFilters() As libvlc.ModuleList
		  Return New libvlc.ModuleList(libvlc_video_filter_list_get(VLCInstance.GetInstance.Handle))
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_can_pause(mPlayer)
			End Get
		#tag EndGetter
		CanPause As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_will_play(mPlayer)
			End Get
		#tag EndGetter
		CanPlay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_is_seekable(mPlayer)
			End Get
		#tag EndGetter
		CanSeek As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_get_state(mPlayer)
			End Get
		#tag EndGetter
		CurrentState As libvlc.PlayerState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mEqualizer = Nil Then mEqualizer = New libvlc.Equalizer
			  return mEqualizer
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If mPlayer = Nil Then Return
			  If libvlc_media_player_set_equalizer(mPlayer, value.Handle) <> 0 Then Raise New VLCException("Unable to assign the equalizer to this player.")
			  mEqualizer = value
			End Set
		#tag EndSetter
		Equalizer As libvlc.Equalizer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_is_playing(mPlayer)
			End Get
		#tag EndGetter
		IsPlaying As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_get_length(mPlayer)
			End Get
		#tag EndGetter
		LengthMS As Int64
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mEmbeddedWithin As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mEqualizer As libvlc.Equalizer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInstance As VLCInstance
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPlayer As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_audio_get_mute(mPlayer) = 1
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If mPlayer <> Nil Then libvlc_audio_set_mute(mPlayer, value)
			End Set
		#tag EndSetter
		Muted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_get_position(mPlayer) * 100
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If mPlayer <> Nil Then libvlc_media_player_set_position(mPlayer, value / 100)
			End Set
		#tag EndSetter
		Position As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_media_player_get_time(mPlayer)
			End Get
		#tag EndGetter
		TimeMS As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return libvlc_audio_get_volume(mPlayer)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If mPlayer <> Nil Then
			    If libvlc_audio_set_volume(mPlayer, value) = -1 Then Raise New VLCException("Volume percent is out of range (0-100)")
			  End If
			End Set
		#tag EndSetter
		Volume As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AspectRatio"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPause"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanPlay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanSeek"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsPlaying"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Muted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Position"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Volume"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
