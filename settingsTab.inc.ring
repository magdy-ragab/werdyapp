/*
**	Project : Werdy Application
**	File Purpose : set/reset settings
**	Date : 2017.09.9
**	Author :  Magdy Ragab <developer.eye1@gmail.com>
*/


setContentsMargins(15,15,15,15)
setStyleSheet("background:rgba(255,255,255,255)")
setFixedHeight(400)


PagesPerTime = new qLabel(settingsTab) {
	setStyleSheet("border:0px none;;")
	settext("عدد الصفحات في المرة : ")
}

reade = new qLabel(settingsTab) {
	setStyleSheet("border:0px none;;")
	settext("عدد الدقائق بين كل ورد:")
}

spinnr = new qspinbox(settingsTab) {
	pagesRead=pagesCount()
	pagesRead=1*pagesRead
	setvalue(pagesRead)
	setrange(1, 100)
	/*setFixedHeight(30)*/
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}

spinner2 = new qspinbox(settingsTab) {
	werdHour=werdyTimers()
	werdHour=1*werdHour
	setvalue(werdHour)
	setrange(1, 500)
	setSingleStep(15)
	/*setFixedHeight(30)*/
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
	
}


fontSizeLabel=New QLabel(settingsTab) {
	setText("حجم الخط")
}

fontSizeCombo=New QComboBox(settingsTab) {
	
	alist = ["2","3","4","5","6","7","8","9","10", "11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"]
	for x in aList additem(x,0) next
	setFixedHeight(30)
	setCurrentIndex(fontSize-2)
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}


lineHeightLabel=New QLabel(settingsTab) {
	setText("تباعد الاسطر")
}

lineHeightCombo=New QComboBox(settingsTab) {
	alist = ["4","5","6","7","8","9","10","11","12","13","14","15"]
	for x in aList additem(x,0) next
	setCurrentIndex(lineHeight-4)
	setFixedHeight(30)
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}



readTimeLabel1 = new qLabel(settingsTab) {
	settext("تشغيل بين الساعة")
	setStyleSheet("border:0px none;;")
}



readTimeCombo1= New qspinbox(settingsTab) 
{
	getStartTimeV=getStartTime()
	getStartTimeV=1*getStartTimeV
	setvalue(getStartTimeV)
	setrange(0, 23)
	/*setFixedHeight(30)*/
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}

readTimeLabel2 = new qLabel(settingsTab) {
	settext("و الساعة")
	setStyleSheet("border:0px none;;")
}

readTimeCombo2= New qspinbox(settingsTab) 
{
	getEndTimeV=getEndTime()
	getEndTimeV=1*getEndTimeV
	setvalue(getEndTimeV)
	setrange(1, 23)
	/*setFixedHeight(30)*/
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}


clean_check= new qcheckbox(settingsTab) {
	setStyleSheet("background: rgba(255,255,255,128);")
	if clean_only_c='1'
		setChecked(true)
	ok
}

clean_label= new qlabel(settingsTab) {
	settext("لاتعرض التشكيل")
	setFixedWidth(350)
	setFixedHeight(30)
}

setdefaultBtn  = new qPushButton(settingsTab) {
	settext("الإعدادات الإفتراضية")
	setStyleSheet("color:red; font-weight:bold;background:#FFFFFF;border:1px solid #4F4C3B")
	setclickevent("setdefault()")
	setFixedHeight(30)
}



WerdContReadBtn  = new qPushButton(settingsTab) {
	settext("إعادة تشغيل الورد")
	setclickevent("WerdContRead()")
	setFixedHeight(30)
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}


settingsSubmit= new qPushButton(settingsTab) {
	settext("حفظ")
	setclickevent("settingsSubmitClicked()")
	setFixedHeight(30)
	setStyleSheet("background:#FFFFFF;border:1px solid #4F4C3B")
}




layout200 = new qHBoxLayout() {
	addwidget(spinnr)
	addwidget(PagesPerTime)
}

layout201 = new qHBoxLayout() {
	addwidget(spinner2)
	addwidget(reade)
}

layout204 = new qHBoxLayout() {
	addwidget(WerdContReadBtn)
}

layout206 = new qHBoxLayout() {
	addWidget(clean_label)
	addWidget(clean_check)
}

fontSizeLayout = new qHBoxLayout() {
	addWidget(fontSizeCombo)
	addWidget(fontSizeLabel)
}
lineHeightLayout = new qHBoxLayout() {
	addWidget(lineHeightCombo)
	addWidget(lineHeightLabel)
}

layout207 = new qHBoxLayout() {
	addWidget(settingsSubmit)
}




layoutreadTimeSettings = new qHBoxLayout() {
	addWidget(readTimeLabel2)
	addWidget(readTimeCombo2)
	addWidget(readTimeLabel1)
	addWidget(readTimeCombo1)
}


layout203 = new qVBoxLayout() {
	addLayout(layout200)
	addLayout(layout201)
	addLayout(layoutreadTimeSettings)
	addWidget(setdefaultBtn)
	addLayout(layout206)
	addLayout(fontSizeLayout)
	addLayout(lineHeightLayout)
	addLayout(layout204)
	addLayout(layout207)
}

setLayout(layout203)
