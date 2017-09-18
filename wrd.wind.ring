/*
**	Project : Werdy Application
**	File Purpose : read or snooze?
**	Date : 2017.09.9
**	Author :  Magdy Ragab <developer.eye1@gmail.com>
*/




if werdWindStart=0
	WrdWinApp = New qApp {
		
		winwrd = new qWidget() 
		{
			werdWindStart=1
			setparent(win1)
			//setwindowflags(qt_dialog & ~ qt_WindowMaximizeButtonHint & qt_SubWindow)
			setwindowflags(Qt_CustomizeWindowHint | Qt_WindowTitleHint | Qt_WindowStaysOnTopHint | Qt_dialog) 
			setwindowmodality(true)
			setwindowtitle("وردي")
			setwinicon(self,"images/icon.png")
			setStyleSheet("background-image:url('images/islamic-star.png');font-family:Tahoma, Verdana, Segoe, sans-serif")
			
			
			
			wrdlabel = new qLabel(winwrd) {settext("  حان وقت قراءة "+pagesCount()+" صفحة/صفحات من القرآن  ")}	
			
			
			wrdRead= new qPushButton(winwrd) {
				settext("قراءة")
				setclickevent("startReadWrd()")
				setStyleSheet("qproperty-icon: url('images/1464846947_book.png')")
			}

			
			wrdSnooze= new qPushButton(winwrd) {
				settext("تأجيل")
				setclickevent("SnoozeReading()")
				setStyleSheet("qproperty-icon: url('images/clock.png')")
			}
			
			closeWrdWin= new qPushButton(winwrd) {
				settext("إنهاء")
				setclickevent("SnoozeClose()")
				setStyleSheet("qproperty-icon: url('images/del.png')")
			}
			
			wrdBtns = new qHBoxLayout()
			{
				addWidget(closeWrdWin)
				addWidget(wrdRead)
				addWidget(wrdSnooze)
			}
			
			
			wrdReadWnd= new qVBoxLayout()
			{
				addWidget(wrdlabel)
				addlayout(wrdBtns)
			}
			
			setLayout(wrdReadWnd)
			show()
			
			
		}
	}
end



