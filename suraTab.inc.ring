/*
**	Project : Werdy Application
**	File Purpose : reading the werd
**	Date : 2017.09.9
**	Author :  Magdy Ragab <developer.eye1@gmail.com>
*/


setStyleSheet(scollBarsStyle())


prevBtn= new qPushButton(suraTab)
{
	setStyleSheet("color:#222;font-size:18pt;background:#DADECD; border:1px solid #717563;height:25px;border-radius:2px;")
	setText("◄")
	setClickEvent("nextFunc()")
}
nextBtn= new qPushButton(suraTab)
{
	setStyleSheet("color:#222;font-size:18pt;background:#DADECD;border:1px solid #717563;height:25px;border-radius:2px;")
	setText("►")
	setClickEvent("prevFunc()")
}

tafseetBtn= new qPushButton(suraTab)
{
	setStyleSheet("font-size:18pt;background:#FFFFFF;color:green;border:1px solid #82896b;height:25px;")
	setText("❞")
	setClickEvent("toggleTafseer()")
}

searchBtn= new qPushButton(suraTab)
{
	setStyleSheet("font-size:18pt;font-weight:bold;color:blue;background:#FFFFFF;border:1px solid #82896b;height:25px")
	setText("⌕")
	setClickEvent("toggleSearch()")
}

setBookmarkBtn= new qPushButton(suraTab)
{
	setStyleSheet("font-size:15pt;background:#FFFFFF;color:red;border:1px solid #82896b;height:25px")
	setText("★")
	setClickEvent("setBookmark()")
}

trayBtn= new qPushButton(suraTab)
{
	setStyleSheet("font-size:18pt;background:#FFFFFF;color:darkred;border:1px solid #82896b;height:25px")
	setText("▼")
	setClickEvent("hiddenMode()")
}


qtext= new QTextEdit(suraTab) 
{
	oFont2 = new qfont("",0,0,0)
	oFont2.setRawName("UthmanicHafs.ttf")
	setfont(oFont2)
	setReadOnly(true)
	setText(loadWerd(startPage))
	//setStyleSheet("font-family: UthmanicHafs")	
}


tafseerCombo=New QComboBox(suraTab) {
	
	alist = ["التفسير الميسر", "تفسير الجلالين"]
	for x in aList additem(x,0) next
	hide()
	setStyleSheet("background:rgba(255,255,255,255);border:1px solid #000;")
	if getTafseerBook() = "التفسير الميسر"
		setCurrentIndex(0)
	else
		setCurrentIndex(1)
	ok
}

tafseetText= new QTextEdit(suraTab) 
{
	setReadOnly(true)
	hide()
	setText( getTafseer(startPage) )
	setStyleSheet("background:#FFFFFF;color:#2b2817;border-width:1px; border-style:solid; border-color:#000000;")
}


topBtnsLayout = new qHBoxLayout() {
	addwidget(nextBtn)
	addwidget(setBookmarkBtn)
	addwidget(searchBtn)
	addwidget(trayBtn)
	addwidget(tafseetBtn)
	addwidget(prevBtn)
}


suraTextLayout = new qVBoxLayout() {
	addwidget(qtext)
	addwidget(tafseerCombo)
	addwidget(tafseetText)
}

suraTabLayouts= new qVBoxLayout()
{
	addLayout(topBtnsLayout)
	addLayout(suraTextLayout)
}

suraTab.setLayout(suraTabLayouts)

/*downBtn= new qPushButton(suraTab)
{
	setStyleSheet("background:rgba(63,0,0,255); border:1px solid #82896b;color:white;padding:0;font-size:10px;")
	setClickEvent("toggleToolBar()")
	setText("🡻 ")
	setGeometry(6,0,20,44)
}*/
