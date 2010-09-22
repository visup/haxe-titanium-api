import titanium.mobile.UI;
import titanium.mobile.UIiPhone;
import titanium.mobile.ui.Matrix2D;
import titanium.mobile.ui.Window;
import titanium.mobile.ui.TabGroup;
import titanium.mobile.ui.Tab;
import titanium.mobile.ui.Label;

import ImportAll;

class Main
{
	public static function main()
	{
		var a = new Main();
	}
	
	public function new()
	{
		// this sets the background color of the master UIView (when there are no windows/tab groups on it)
		UI.setBackgroundColor('#000');
		
		// create tab group
		var tabGroup = TabGroup.create();

		//
		// create base UI tab and root window
		//
		var win1 = Window.create({  
			title:'Tab 1',
			backgroundColor:'#fff'
		});
		var tab1 = Tab.create({  
			icon:'KS_nav_views.png',
			title:'Tab 1',
			window:win1
		});

		var label1 = Label.create({
			color:'#999',
			text:'I am a Haxe Window 1',
			font:{fontSize:20,fontFamily:'Helvetica Neue'},
			textAlign:'center',
			width:'auto'
		});

		win1.add(label1);

		//
		// create controls tab and root window
		//
		var win2 = Window.create({  
			title:'Tab 2',
			backgroundColor:'#fff'
		});
		var tab2 = Tab.create({  
			icon:'KS_nav_ui.png',
			title:'Tab 2',
			window:win2
		});

		var label2 = Label.create({
			color:'#999',
			text:'I am a Haxe Window 2',
			font:{fontSize:20,fontFamily:'Helvetica Neue'},
			textAlign:'center',
			width:'auto'
		});

		win2.add(label2);

		//
		//  add tabs
		//
		tabGroup.addTab(tab1);  
		tabGroup.addTab(tab2);  

		// open tab group
		tabGroup.open();
		
		trace("Log from Haxe trace");
	}
}