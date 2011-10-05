package components.preload
{
	import flash.display.Loader;
	import flash.utils.ByteArray;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class WelcomeScreen extends Loader
	{
		
		
		[ Embed(source="preloader_new.swf", mimeType="application/octet-stream") ]
		public var WelcomeScreenGraphic:Class;
		public var timer:Timer;
		private var fadeInRate:Number  = .04;
		private var fadeOutRate:Number = .02;
		private var timeAutoClose:int = 0;
		public var ready:Boolean = false; 
		
		public function WelcomeScreen()
		{
					
			this.visible = false;
			this.alpha = 0;
			timer = new Timer( 1 );
            timer.addEventListener( TimerEvent.TIMER, updateView );
			timer.start();

		
			this.loadBytes( new WelcomeScreenGraphic() as ByteArray );
		}
		
		public function updateView( event:TimerEvent ):void
		{
			if( this.alpha < 1)	this.alpha = this.alpha + this.fadeInRate;
			this.stage.addChild(this)
			this.x = this.stage.stageWidth/2 - 275;
			this.y = this.stage.stageHeight/2 - 200;
			this.visible=true;
			if( this.ready && timer.currentCount > this.timeAutoClose ) closeScreen()	
		}
		
		public function closeScreen():void
		{
            timer.removeEventListener( TimerEvent.TIMER, updateView );
			timer.addEventListener( TimerEvent.TIMER, closeScreenFade );					
		}
		
		public function closeScreenFade( event:TimerEvent ):void
		{
			timer.stop()
			this.parent.removeChild(this);
		}		
		
				
	}
}