package utils
{
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.controls.treeClasses.TreeItemRenderer;
	import mx.core.BitmapAsset;
	import mx.core.UIComponent;
	
	/**
	 * Provides a workaround for using run-time loaded graphics in styles and properties which require a Class reference
	 */
	public class IconUtility extends BitmapAsset
	{
		
		private static var dictionary:Dictionary;
		private static var lista:ArrayCollection;
		
		/**
		 * Used to associate run-time graphics with a target
		 * @param target A reference to the component associated with this icon
		 * @param source A url to a JPG, PNG or GIF file you wish to be loaded and displayed
		 * @param width Defines the width of the graphic when displayed
		 * @param height Defines the height of the graphic when displayed
		 * @return A reference to the IconUtility class which may be treated as a BitmapAsset
		 * @example &lt;mx:Button id="button" icon="{IconUtility.getClass(button, 'http://www.yourdomain.com/images/test.jpg')}" /&gt;
		 */
		public static function getClass( target:Object, source:ByteArray, width:Number = NaN, height:Number = NaN ):Class {
			if(!dictionary) {
				dictionary = new Dictionary(false);
			}
			if (!lista) {
				lista = new ArrayCollection();
			}
			//if(source is String) {
				var loader:Loader = new Loader();
				loader.loadBytes(source, new LoaderContext(false));
				//source = loader;
			//}
			lista.addItem({ key:target, source:loader, width:width, height:height });
			dictionary[target.toString()] = { source:loader, width:width, height:height };
			return IconUtility;
		}
		
		/**
		 * @private
		 */
		public function IconUtility():void {
			addEventListener(Event.ADDED, addedHandler, false, 0, true)
		}
		
		private function addedHandler(event:Event):void {
			if(parent) {
				getData(parent);
			}
		}
		
		private function getData(object:Object):void {
			if (object is TreeItemRenderer) {
				object = TreeItemRenderer(object).data;
			}
			var data:Object = null;
			for each (var teste:Object in lista) {
				if (teste["key"] == object) {
					data = teste;
				}				
			}
//			var data:Object = dictionary[object.toString()];
			if(data) {
				var source:Object = data.source;
				if(data.width > 0 && data.height > 0) {
					bitmapData = new BitmapData(data.width, data.height, true, 0x00FFFFFF);
				}
				if(source is Loader) {
					var loader:Loader = source as Loader;
					if(!loader.content) {
						loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler, false, 0, true);
					} else {
						displayLoader(loader);
					}
				}
			}
		}
		
		private function displayLoader( loader:Loader ):void {
			if(!bitmapData) {
				bitmapData = new BitmapData(loader.content.width, loader.content.height, true, 0x00FFFFFF);
			}
			bitmapData.draw(loader, new Matrix(bitmapData.width/loader.width, 0, 0, bitmapData.height/loader.height, 0, 0));
			if(parent is UIComponent) {
				var component:UIComponent = parent as UIComponent;
				component.invalidateSize();
				component.invalidateDisplayList();
			}
		}
		
		private function completeHandler(event:Event):void {
			if(event && event.target && event.target is LoaderInfo) {
				displayLoader(event.target.loader as Loader);
			}
		}
		
	}
}