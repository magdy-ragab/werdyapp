/*
**	Project : Werdy Application
**	File Purpose : Help , about developer and Ring Tabs 
**	Date : 2017.09.9
**	Author :  Magdy Ragab <developer.eye1@gmail.com>
*/

helpAbout = new qwidget()
{
	setStyleSheet("background:rgba(255,255,255,255)")
	helpTab1=new QLabel(helpAbout){
		setOpenExternalLinks(true)
		setWordWrap(true)
		
		/*if( iswindows() or islinux() )
			setFixedHeight(300)
		ok*/
		setText("<div style='font-family:tahoma;font-size:12px'>"+
		"<p align=center><img src='img/logo2.png' width=200 /></p>"+
		"<h1 align=center>برنامج وردي <sup>2.00</sup></h1>"+
		"<h3 align=center>(اسماء بنت يزيد)</h3>"+
		"<p align=right>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  برنامج وردي هو : برنامج لتنظيم قراءة القرءان الكريم ، و فكرته العامة -بإختصار شديد- هو : تنبيهك بحلول موعد وردك بطريقة تراكمية بسيطة."+ 
		"<p align=right>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; مثلاً : تنبيهك بقراءة ثلاث صفحات في الساعة ، من الساعة الثامنة صباحًا إلى الخامسة مساءًا ، يساوي أكثر من جزء يومياً.إن قراءة الثلاث صفحات لا يستغرق أكثر من دقائق معدودة -ربما دقيقة أو اثنتين- ، و بهذا تكون قد ختمت القرءان الكريم في أقل من شهر.</p>"+
		"<p> <strong>صفحة البرنامج على <a href='http://fb.com/werdyApp/'>الفيسبوك</a></strong></p>"+
		"</div>")
	}
	help1Layout= new qVBoxLayout() {
		addwidget(helpTab1)
	}
	setLayout(help1Layout)
}

helpDeveloper = new qwidget()
{
	setStyleSheet("background:rgba(255,255,255,255)")
	helpTab2=new QTextEdit(helpDeveloper){
		setReadOnly(true)
		setHtml( read( "./help2.html" ))
	}
	help2Layout= new qVBoxLayout() {
		addwidget(helpTab2)
	}
	setLayout(help2Layout)
}

helpRing = new qwidget()
{
	setStyleSheet("background:rgba(255,255,255,255)")
	helpTab3=new QTextEdit(helpRing){
		setReadOnly(true)
		setHtml( read( "./help3.html" ))
	}
	help3Layout= new qVBoxLayout() {
		addwidget(helpTab3)
	}
	setLayout(help3Layout)
}

tab2 = new qtabwidget(helpTab)
{
	inserttab(0,helpAbout      , " البرنامج  " )
	inserttab(1,helpDeveloper     , " المبرمج ")
	inserttab(2,helpRing  , " Ring لغة  ")
	
}

help1= new qVBoxLayout() {
	addwidget(tab2)
	
}
setLayout(help1)
