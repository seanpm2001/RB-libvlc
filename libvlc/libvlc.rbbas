#tag Module
Protected Module libvlc
	#tag Method, Flags = &h1
		Protected Function CompilerVersionString() As String
		  Dim mb As MemoryBlock = libvlc_get_compiler()
		  If mb <> Nil Then Return mb.CString(0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsAvailable() As Boolean
		  Static available As Boolean
		  If Not available Then available = System.IsFunctionAvailable("libvlc_new", "libvlc")
		  Return available
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LastErrorMessage(Clear As Boolean = False) As String
		  Dim err As String
		  Dim mb As MemoryBlock = libvlc_errmsg()
		  If mb <> Nil Then err = mb.CString(0)
		  If Clear Then libvlc_clearerr()
		  Return err
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_add_intf Lib "libvlc" (Instance As Ptr, Name As CString) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_get_amp_at_index Lib "libvlc" (Equalizer As Ptr, Frequency As UInt32) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_get_band_count Lib "libvlc" () As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_get_band_frequency Lib "libvlc" (BandNumber As UInt32) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_get_preamp Lib "libvlc" (Equalizer As Ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_get_preset_count Lib "libvlc" () As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_get_preset_name Lib "libvlc" (Index As UInt32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_new Lib "libvlc" () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_new_from_preset Lib "libvlc" (Index As UInt32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_audio_equalizer_release Lib "libvlc" (Equalizer As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_set_amp_at_index Lib "libvlc" (Equalizer As Ptr, Amplification As Single, Frequency As UInt32) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_equalizer_set_preamp Lib "libvlc" (Equalizer As Ptr, PreAmplification As Single) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_filter_list_get Lib "libvlc" (Instance As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_get_mute Lib "libvlc" (Player As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_get_volume Lib "libvlc" (Player As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_audio_set_mute Lib "libvlc" (Player As Ptr, DoMute As Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_audio_set_volume Lib "libvlc" (Player As Ptr, Percent As Integer) As Integer
	#tag EndExternalMethod

	#tag DelegateDeclaration, Flags = &h21
		Private Delegate Sub libvlc_callback_t(EventStruct As libvlc_event_t, UserData As Ptr)
	#tag EndDelegateDeclaration

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_clearerr Lib "libvlc" ()
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_errmsg Lib "libvlc" () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_event_attach Lib "libvlc" (EventManager As Ptr, EventType As libvlc . EventType, EventHandler As Ptr, UserData As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_event_detach Lib "libvlc" (EventManager As Ptr, EventType As libvlc . EventType, EventHandler As Ptr, UserData As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_get_compiler Lib "libvlc" () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_get_version Lib "libvlc" () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_event_manager Lib "libvlc" (Medium As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_get_meta Lib "libvlc" (Medium As Ptr, DataType As libvlc . MetaDataType) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_get_mrl Lib "libvlc" (Medium As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_get_type Lib "libvlc" (Medium As Ptr) As libvlc.MediaType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_is_parsed Lib "libvlc" (Medium As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_add_media Lib "libvlc" (MediaList As Ptr, Medium As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_count Lib "libvlc" (MediaList As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_event_manager Lib "libvlc" (MediaList As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_index_of_item Lib "libvlc" (MediaList As Ptr, Medium As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_insert_media Lib "libvlc" (MediaList As Ptr, Medium As Ptr, Index As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_is_readonly Lib "libvlc" (MediaList As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_item_at_index Lib "libvlc" (MediaList As Ptr, Index As Integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_lock Lib "libvlc" (MediaList As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_media Lib "libvlc" (MediaList As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_new Lib "libvlc" (Instance As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_get_media_player Lib "libvlc" (ListPlayer As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_get_state Lib "libvlc" (ListPlayer As Ptr) As libvlc.PlayerState
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_is_playing Lib "libvlc" (ListPlayer As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_new Lib "libvlc" (Instance As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_next Lib "libvlc" (ListPlayer As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_pause Lib "libvlc" (ListPlayer As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_play Lib "libvlc" (ListPlayer As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_play_item Lib "libvlc" (ListPlayer As Ptr, Medium As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_play_item_at_index Lib "libvlc" (ListPlayer As Ptr, Index As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_player_previous Lib "libvlc" (ListPlayer As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_release Lib "libvlc" (ListPlayer As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_set_media_list Lib "libvlc" (ListPlayer As Ptr, MediaList As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_set_media_player Lib "libvlc" (ListPlayer As Ptr, NewVLCPlayer As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_set_playback_mode Lib "libvlc" (ListPlayer As Ptr, PlayMode As libvlc . PlaybackMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_player_stop Lib "libvlc" (ListPlayer As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_release Lib "libvlc" (MediaList As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_list_remove_index Lib "libvlc" (MediaList As Ptr, Index As Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_set_media Lib "libvlc" (MediaList As Ptr, Medium As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_list_unlock Lib "libvlc" (MediaList As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_new_location Lib "libvlc" (Instance As Ptr, MediaURL As CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_parse Lib "libvlc" (Medium As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_can_pause Lib "libvlc" (Player As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_event_manager Lib "libvlc" (Player As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_get_length Lib "libvlc" (Player As Ptr) As Int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_get_media Lib "libvlc" (Player As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_get_position Lib "libvlc" (Player As Ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_get_state Lib "libvlc" (Player As Ptr) As libvlc.PlayerState
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_get_time Lib "libvlc" (Player As Ptr) As Int64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_is_playing Lib "libvlc" (Player As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_is_seekable Lib "libvlc" (Player As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_new Lib "libvlc" (Instance As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_new_from_media Lib "libvlc" (Media As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_play Lib "libvlc" (Player As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_release Lib "libvlc" (Player As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_retain Lib "libvlc" (Player As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_set_equalizer Lib "libvlc" (Player As Ptr, Equalizer As Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_set_hwnd Lib "libvlc" (Player As Ptr, HWND As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_set_media Lib "libvlc" (Player As Ptr, Medium As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_set_nsobject Lib "libvlc" (Player As Ptr, NSObject As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_set_pause Lib "libvlc" (Player As Ptr, DoPause As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_set_position Lib "libvlc" (Player As Ptr, Percent As Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_set_xwindow Lib "libvlc" (Player As Ptr, XID As Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_player_stop Lib "libvlc" (Player As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_player_will_play Lib "libvlc" (Player As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_release Lib "libvlc" (Medium As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_retain Lib "libvlc" (Medium As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_save_meta Lib "libvlc" (Medium As Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_set_meta Lib "libvlc" (Medium As Ptr, DataType As libvlc . MetaDataType, NewData As CString)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_media_tracks_get Lib "libvlc" (Medium As Ptr, ByRef TrackBuffer As Ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_media_tracks_release Lib "libvlc" (TrackList As Ptr, Count As UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_module_description_list_release Lib "libvlc" (ListPtr As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_new Lib "libvlc" (argc As Integer, argv As CString) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_release Lib "libvlc" (Instance As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_retain Lib "libvlc" (Instance As Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Sub libvlc_set_user_agent Lib "libvlc" (Instance As Ptr, Name As CString, UserAgent As CString)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Soft Declare Function libvlc_video_filter_list_get Lib "libvlc" (Instance As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function VersionString() As String
		  Dim mb As MemoryBlock = libvlc_get_version()
		  If mb <> Nil Then Return mb.CString(0)
		End Function
	#tag EndMethod


	#tag Structure, Name = libvlc_event_t, Flags = &h21
		Type As Integer
		  Referent As Ptr
		Data As Ptr
	#tag EndStructure

	#tag Structure, Name = libvlc_media_track_t, Flags = &h21
		Codec As UInt32
		  OriginalFourCC As UInt32
		  ID As Integer
		  Type As Integer
		  Profile As Integer
		  Level As Integer
		  TrackPtr As Ptr
		  BitRate As UInt32
		  Language As Ptr
		Description As Ptr
	#tag EndStructure

	#tag Structure, Name = libvlc_module_description_t, Flags = &h21
		psz_name As Ptr
		  psz_shortname As Ptr
		  psz_longname As Ptr
		psz_help As Ptr
	#tag EndStructure


	#tag Enum, Name = MediaType, Type = Integer, Flags = &h1
		Unknown
		  File
		  Directory
		  Disc
		  Stream
		Playlist
	#tag EndEnum

	#tag Enum, Name = MetaDataType, Type = Integer, Flags = &h1
		Title
		  Artist
		  Genre
		  Copyright
		  Album
		  TrackNumber
		  Description
		  Rating
		  Date
		  Setting
		  URL
		  Language
		  NowPlaying
		  Publisher
		  EncodedBy
		  ArtworkURL
		  TrackID
		  TrackTotal
		  Director
		  Season
		  Episode
		  ShowName
		  Actors
		  AlbumArtist
		  DiscNumber
		DiscTotal
	#tag EndEnum

	#tag Enum, Name = PlaybackMode, Type = Integer, Flags = &h1
		Default
		  Looping
		Repeat
	#tag EndEnum

	#tag Enum, Name = PlayerState, Type = Integer, Flags = &h1
		IDLE=0
		  OPENING=1
		  BUFFERING=2
		  PLAYING=3
		  PAUSED=4
		  STOPPING=5
		  ENDED=6
		ERROR=7
	#tag EndEnum

	#tag Enum, Name = TrackType, Type = Integer, Flags = &h1
		Unknown=-1
		  Audio=0
		  Video=1
		Text=2
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
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
	#tag EndViewBehavior
End Module
#tag EndModule
