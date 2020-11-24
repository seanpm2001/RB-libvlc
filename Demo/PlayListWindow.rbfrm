#tag Window
Begin Window PlayListWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   2.17e+2
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Playlist"
   Visible         =   True
   Width           =   6.16e+2
   Begin Listbox MediaList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   4
      ColumnsResizable=   True
      ColumnWidths    =   "30%,30%,25%,*"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   True
      EnableDragReorder=   True
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   188
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Title	Artist	Album	Length"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   616
      _ScrollWidth    =   -1
   End
   Begin Timer UITimer
      Height          =   32
      Index           =   -2147483648
      Left            =   634
      LockedInPosition=   False
      Mode            =   2
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   21
      Width           =   32
   End
   Begin BevelButton LockWindowBtn
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   "&c00000000"
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   "🔓"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   ""
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   "&c00000000"
      TextFont        =   "System"
      TextSize        =   ""
      TextUnit        =   0
      Top             =   192
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   24
   End
   Begin Thread DirectoryLoader
      Height          =   32
      Index           =   -2147483648
      Left            =   634
      LockedInPosition=   False
      Priority        =   3
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   52
      Width           =   32
   End
   Begin Timer DirectoryLoadComplete
      Height          =   32
      Index           =   -2147483648
      Left            =   665
      LockedInPosition=   False
      Mode            =   0
      Period          =   1
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   52
      Width           =   32
   End
   Begin PushButton PrevTrackBtn
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "<<"
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   "Previous track"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   132
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   192
      Underline       =   ""
      Visible         =   True
      Width           =   65
   End
   Begin PushButton NextTrackBtn
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   ">>"
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   "Next track"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   327
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   192
      Underline       =   ""
      Visible         =   True
      Width           =   65
   End
   Begin BevelButton AddFilesBtn
      AcceptFocus     =   ""
      AutoDeactivate  =   True
      BackColor       =   ""
      Bevel           =   ""
      Bold            =   True
      ButtonType      =   ""
      Caption         =   "+"
      CaptionAlign    =   3
      CaptionDelta    =   ""
      CaptionPlacement=   ""
      Enabled         =   True
      HasBackColor    =   ""
      HasMenu         =   2
      Height          =   22
      HelpTag         =   "Add tracks"
      Icon            =   ""
      IconAlign       =   ""
      IconDX          =   ""
      IconDY          =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   574
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   ""
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   ""
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   186
      Underline       =   ""
      Value           =   ""
      Visible         =   True
      Width           =   22
   End
   Begin PopupMenu PlayModeMnu
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Loop none\r\nLoop track\r\nLoop list"
      Italic          =   ""
      Left            =   396
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   190
      Underline       =   ""
      Visible         =   True
      Width           =   88
   End
   Begin PushButton StopBtn
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Stop"
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   197
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   192
      Underline       =   ""
      Visible         =   True
      Width           =   65
   End
   Begin PushButton PlayBtn
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Play"
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   262
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   192
      Underline       =   ""
      Visible         =   True
      Width           =   65
   End
   Begin PushButton RemoveFilesBtn
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   "Remove selected"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   594
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   186
      Underline       =   ""
      Visible         =   True
      Width           =   22
   End
   Begin PushButton SaveListBtn
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "💾"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   "Save playlist"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   554
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   186
      Underline       =   ""
      Visible         =   True
      Width           =   22
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  UITimer.Mode = Timer.ModeOff
		  If mParentWindow <> Nil Then mParentWindow.NotifyListClosed(Me)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  mPendingDirectoriesLock = New Semaphore
		  mPendingMediaLock = New Semaphore
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddDirectory(Target As FolderItem)
		  Dim c As Integer = Target.Count
		  For i As Integer = 1 To c
		    Dim item As FolderItem = Target.Item(i)
		    If item.Directory Then
		      AddDirectory(item)
		    Else
		      Dim m As libvlc.Medium = item
		      If mPlayer.Playlist.IndexOf(m) > -1 Then Continue ' already added
		      mPlayer.Playlist.Append(m)
		      MediaList.AddRow(m.Title, m.Artist, m.Album, libvlc.FormatTime(m.DurationMS))
		      MediaList.RowTag(MediaList.LastIndex) = m
		    End If
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddMedia(List() As libvlc.Medium, UIOnly As Boolean = False)
		  Dim truelist As libvlc.PlayLists.PlayList = mPlayer.Playlist
		  For i As Integer = 0 To UBound(List)
		    Dim m As libvlc.Medium = List(i)
		    If truelist.IndexOf(m) > -1 Then Continue ' already added
		    If Not UIOnly Then truelist.Append(m)
		    MediaList.AddRow(m.Title, m.Artist, m.Album, libvlc.FormatTime(m.DurationMS))
		    MediaList.RowTag(MediaList.LastIndex) = m
		  Next
		  mPlayer.Playlist = truelist
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ListPlayerStateChangedHandler(Sender As libvlc.PlayLists.ListPlayer)
		  #pragma Unused Sender
		  Call NotifyStateChanged()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NotifyStateChanged() As String
		  If PrevTrackBtn = Nil Then ' window has closed
		    Return "!INVALID"
		  End If
		  mDirty = mLastState <> mPlayer.CurrentState
		  mLastState = mPlayer.CurrentState
		  UpdateUI()
		  If CurrentIndex > -1 Then
		    Return MediaList.Cell(CurrentIndex, 0)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowList(PlayerWindow As PlayerWindow, ListPlayer As libvlc.VLCPlayer, List() As libvlc.Medium)
		  If mPlayer = Nil Then
		    mPlayer = New libvlc.PlayLists.ListPlayer(ListPlayer)
		    AddHandler mPlayer.ChangedState, WeakAddressOf ListPlayerStateChangedHandler
		  End If
		  Self.Show()
		  
		  PlayerWindow.Left = PlayerWindow.Left - (Self.Width / 2)
		  Self.Left = PlayerWindow.Left + PlayerWindow.Width
		  Self.Top = PlayerWindow.Top
		  Self.Height = PlayerWindow.Height
		  
		  AddMedia(List)
		  UpdateUI()
		  mParentWindow = PlayerWindow
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateUI()
		  If mDirty Then
		    PrevTrackBtn.Enabled = mPlayer.CanMovePrev()
		    NextTrackBtn.Enabled = mPlayer.CanMoveNext()
		    If mPlayer.CurrentState = libvlc.PlayerState.PLAYING Then
		      PlayBtn.Caption = "Pause"
		      StopBtn.Enabled = True
		    Else
		      PlayBtn.Caption = "Play"
		      StopBtn.Enabled = False
		    End If
		    mDirty = False
		  End If
		  Static blank, playarrow As Picture
		  If blank = Nil Then
		    blank = New Picture(10, 10, 32)
		    blank.Transparent = 1
		  End If
		  If playarrow = Nil Then
		    playarrow = New Picture(100, 100, 32)
		    playarrow.Transparent = 1
		    playarrow.Graphics.AntiAlias = True
		    playarrow.Graphics.ForeColor = &c00FF0000
		    playarrow.Graphics.DrawLine(0, 0, 100, 50)
		    playarrow.Graphics.DrawLine(0, 100, 100, 50)
		    playarrow.Graphics.DrawLine(1, 1, 1, 100)
		    playarrow.RGBSurface.FloodFill(50, 50, &c00FF0000)
		    Dim tmp As New Picture(10, 10, 32)
		    tmp.Graphics.DrawPicture(playarrow, 0, 0, 10, 10, 0, 0, playarrow.Width, playarrow.Height)
		    playarrow = tmp
		  End If
		  If mLastActive <> mPlayer.ListIndex Then
		    mLastActive = mPlayer.ListIndex
		    For i As Integer = 0 To MediaList.ListCount - 1
		      ' force the MediaList to repaint all the cells in the row
		      For j As Integer = 0 To MediaList.ColumnCount - 1
		        MediaList.Cell(i, j) = MediaList.Cell(i, j)
		      Next
		      If i = CurrentIndex Then
		        MediaList.RowPicture(i) = playarrow
		      Else
		        MediaList.RowPicture(i) = blank
		      End If
		    Next
		    MediaList.Refresh()
		  End If
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return mPlayer.ListCount
			End Get
		#tag EndGetter
		Count As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return mPlayer.ListIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If mPlayer <> Nil Then mPlayer.ListIndex = value
			End Set
		#tag EndSetter
		CurrentIndex As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then
			    Dim m As libvlc.Medium = mPlayer.Playlist(mPlayer.ListIndex)
			    If m = Nil Then Return Nil
			    If Not m.IsParsed Then m.Parse
			    Return m
			  End If
			  
			End Get
		#tag EndGetter
		CurrentMedium As libvlc.Medium
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLockToParentWindow
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLockToParentWindow = value
			End Set
		#tag EndSetter
		LockToParentWindow As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mCompleted As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDirty As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastActive As Integer = -2
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastState As libvlc.PlayerState
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockToParentWindow As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mParentWindow As PlayerWindow
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPendingDirectories() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPendingDirectoriesLock As Semaphore
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPendingMedia() As libvlc.Medium
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPendingMediaLock As Semaphore
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPlayer As libvlc.PlayLists.ListPlayer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mPlayer <> Nil Then Return mPlayer.PlayMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If mPlayer <> Nil Then mPlayer.PlayMode = value
			End Set
		#tag EndSetter
		PlayMode As libvlc.PlaybackMode
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events MediaList
	#tag Event
		Sub Open()
		  Me.AcceptFileDrop(MediaFileTypes.All)
		  Me.AcceptFileDrop(DemoFileTypes.All)
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #pragma Unused action
		  Do
		    If obj.FolderItem <> Nil Then
		      Dim f As FolderItem = obj.FolderItem
		      If f.Directory Then
		        If MsgBox("Recursively scan '" + f.Name + "'?", 4 + 48, "Confirm action") = 6 Then
		          AddDirectory(f)
		        End If
		      Else
		        Dim m As libvlc.Medium = obj.FolderItem
		        mPlayer.Playlist.Append(m)
		        MediaList.AddRow(m.Title, m.Artist, m.Album, libvlc.FormatTime(m.DurationMS))
		        MediaList.RowTag(MediaList.LastIndex) = m
		      End If
		    End If
		  Loop Until Not obj.NextItem()
		  mLastActive = -2
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function SortColumn(column As Integer) As Boolean
		  #pragma Unused column
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  #pragma Unused column
		  If mPlayer = Nil Then Return False
		  If Me.Selected(row) Then
		    Dim startcolor As Color = &c0080FF00
		    Dim endcolor As Color = &c7DBEFF00
		    
		    Dim ratio, endratio as Double
		    For i As Integer = 0 To g.Height + 1
		      ratio = ((g.Height - i) / g.Height)
		      endratio = (i / g.Height)
		      g.ForeColor = RGB(EndColor.Red * endratio + StartColor.Red * ratio, EndColor.Green * endratio + StartColor.Green * ratio, _
		      EndColor.Blue * endratio + StartColor.Blue * ratio)
		      g.DrawLine(0, i, g.Width, i)
		    next
		    
		    Return True
		  End If
		  If row Mod 2 = 0 Then
		    g.ForeColor = &cE2E2E200
		    g.FillRect(0, 0, g.Width, g.Height)
		    Return True
		  Else
		    
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused column
		  #pragma Unused x
		  #pragma Unused y
		  If mPlayer = Nil Then Return False
		  If row = mPlayer.ListIndex Then
		    g.Bold = True
		    ' g.ForeColor = &cFFFFFF00
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  drag.Text = Str(row)
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  #pragma Unused parentRow
		  Dim m As libvlc.Medium = mPlayer.Playlist(Me.ListIndex)
		  mPlayer.Playlist.Remove(Me.ListIndex)
		  mPlayer.Playlist.Insert(newPosition, m)
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim x As Integer = Me.MouseX
		  Dim y As Integer = Me.MouseY
		  Dim row As Integer = Me.RowFromXY(x, y)
		  If row < 0 Then Return
		  mPlayer.ListIndex = row
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  Return IsContextualClick And Me.SelCount <> 0
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events UITimer
	#tag Event
		Sub Action()
		  UpdateUI()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LockWindowBtn
	#tag Event
		Sub Action()
		  If Me.Value Then
		    Me.Caption = "🔒"
		    Self.Left = PlayerWindow.Left + PlayerWindow.Width
		    Self.Top = PlayerWindow.Top
		    Self.Height = PlayerWindow.Height
		    Me.HelpTag = "Unlock from parent window"
		  Else
		    Me.Caption = "🔓"
		    Me.HelpTag = "Lock to parent window"
		  End If
		  mLockToParentWindow = Me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.Value = mLockToParentWindow
		  Me.HelpTag = "Unlock from parent window"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DirectoryLoader
	#tag Event
		Sub Run()
		  Do Until UBound(mPendingDirectories) = -1
		    Do Until mPendingDirectoriesLock.TrySignal()
		      App.YieldToNextThread
		    Loop
		    Dim thisdir As FolderItem
		    Try
		      thisdir = mPendingDirectories.Pop
		    Finally
		      mPendingDirectoriesLock.Release()
		    End Try
		    
		    Dim dirs() As FolderItem
		    Dim media() As libvlc.Medium
		    If thisdir.IsAPlayListFile Then
		      Dim m() As libvlc.Medium = libvlc.PlayLists.ReadM3U(thisdir)
		      For j As Integer = 0 To UBound(m)
		        media.Append(m(j))
		      Next
		    ElseIf thisdir.Directory Then
		      Dim c As Integer = thisdir.Count
		      For i As Integer = 1 To c
		        Dim item As FolderItem = thisdir.Item(i)
		        If item.Directory Then
		          dirs.Append(item)
		        ElseIf item.IsAMediaFile Then
		          media.Append(item)
		        ElseIf item.IsAPlayListFile Then
		          Dim m() As libvlc.Medium = libvlc.PlayLists.ReadM3U(item)
		          For j As Integer = 0 To UBound(m)
		            media.Append(m(j))
		          Next
		        End If
		      Next
		      
		    ElseIf thisdir.IsAMediaFile Then
		      media.Append(thisdir)
		    End If
		    
		    Do Until mPendingMediaLock.TrySignal()
		      App.YieldToNextThread
		    Loop
		    Try
		      For i As Integer = 0 To UBound(media)
		        mPendingMedia.Insert(0, media(i))
		      Next
		    Finally
		      mPendingMediaLock.Release()
		    End Try
		    
		    Do Until mPendingDirectoriesLock.TrySignal()
		      App.YieldToNextThread
		    Loop
		    Try
		      For i As Integer = 0 To UBound(dirs)
		        mPendingDirectories.Insert(0, dirs(i))
		      Next
		    Finally
		      mPendingDirectoriesLock.Release()
		    End Try
		    DirectoryLoadComplete.Mode = Timer.ModeSingle
		    App.YieldToNextThread
		  Loop
		  
		  mCompleted = True
		  DirectoryLoadComplete.Mode = Timer.ModeSingle
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DirectoryLoadComplete
	#tag Event
		Sub Action()
		  Do Until mPendingMediaLock.TrySignal()
		    App.YieldToNextThread()
		  Loop
		  Try
		    AddMedia(mPendingMedia)
		    ReDim mPendingMedia(-1)
		  Finally
		    mPendingMediaLock.Release()
		  End Try
		  If mCompleted = True Then
		    MsgBox("Load complete")
		    mCompleted = False
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PrevTrackBtn
	#tag Event
		Sub Action()
		  If mPlayer.CanMovePrev() Then Call mPlayer.MovePrev()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextTrackBtn
	#tag Event
		Sub Action()
		  If mPlayer.CanMoveNext() Then Call mPlayer.MoveNext()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddFilesBtn
	#tag Event
		Sub Action()
		  If Me.MenuValue = 0 Then
		    
		    Dim dlg As New OpenDialog()
		    dlg.Filter = MediaFileTypes.All + DemoFileTypes.All
		    dlg.MultiSelect = True
		    If dlg.ShowModal() = Nil Then Return
		    Do Until mPendingDirectoriesLock.TrySignal
		      App.YieldToNextThread
		    Loop
		    Try
		      For i As Integer = 0 To dlg.Count - 1
		        mPendingDirectories.Insert(0, dlg.Item(i))
		      Next
		    Finally
		      mPendingDirectoriesLock.Release()
		    End Try
		  Else
		    Dim f As FolderItem = SelectFolder()
		    If f = Nil Then Return
		    Do Until mPendingDirectoriesLock.TrySignal
		      App.YieldToNextThread
		    Loop
		    Try
		      mPendingDirectories.Insert(0, f)
		    Finally
		      mPendingDirectoriesLock.Release()
		    End Try
		  End If
		  
		  Select Case DirectoryLoader.State
		  Case Thread.Running, Thread.Waiting, Thread.Sleeping
		    Return
		  Case Thread.Suspended
		    DirectoryLoader.Resume
		  Case Thread.NotRunning
		    DirectoryLoader.Run
		  End Select
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AddRow("Load files...")
		  Me.AddRow("Load folder...")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PlayModeMnu
	#tag Event
		Sub Change()
		  Dim newmode As libvlc.PlaybackMode
		  Select Case Me.Text
		  Case "Loop none"
		    Self.Title = "Playlist"
		    newmode = libvlc.PlaybackMode.Default
		  Case "Loop track"
		    Self.Title = "Playlist (Repeat track)"
		    newmode = libvlc.PlaybackMode.Repeat
		  Case "Loop list"
		    Self.Title = "Playlist (Repeat list)"
		    newmode = libvlc.PlaybackMode.Looping
		  Else
		    Return
		  End Select
		  
		  If mPlayer.PlayMode <> newmode Then mPlayer.PlayMode = newmode
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StopBtn
	#tag Event
		Sub Action()
		  mPlayer.Stop()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PlayBtn
	#tag Event
		Sub Action()
		  If Me.Caption = "Play" Then
		    mPlayer.Play()
		    Me.Caption = "Pause"
		  Else
		    mPlayer.Pause()
		    Me.Caption = "Play"
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RemoveFilesBtn
	#tag Event
		Sub Action()
		  For i As Integer = MediaList.ListCount - 1 DownTo 0
		    If MediaList.Selected(i) Then
		      mPlayer.Playlist.Remove(i)
		      MediaList.RemoveRow(i)
		    End If
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SaveListBtn
	#tag Event
		Sub Action()
		  Dim dst As FolderItem = GetSaveFolderItem(MediaFileTypes.M3UPlaylist, "Untited playlist")
		  If dst <> Nil Then
		    Dim bs As BinaryStream = BinaryStream.Create(dst, True)
		    libvlc.PlayLists.WriteM3U(mPlayer.Playlist, bs)
		    bs.Close
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
