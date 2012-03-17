package com.loning.image.faceprocesses.frame
{
	import com.loning.image.faceprocesses.ImageMergeFaceProcessor;
	import com.loning.image.Face;
	import flash.geom.Rectangle;
	import de.popforge.imageprocessing.core.LayerManager;
	import de.popforge.imageprocessing.filters.FilterQueue;
	
	public class BaseSimpleFrame extends ImageMergeFaceProcessor
	{
		public function BaseSimpleFrame()
		{
			//TODO: implement function
			super();
		}
		override public function Process(lm:LayerManager, face:Face):void{
			return;
			
		}
		
		override public function OnProcessed(lm:LayerManager, face:Face, queue:FilterQueue):void{
			this.Merge(lm,face);
		}
		override public function GetRectange(face:Face,ori:Rectangle):Rectangle
		{
			var rect:Rectangle=new Rectangle(
				0,
				0 ,
				this.currentLayerManager.width,
				this.currentLayerManager.height);
			return rect;
		}
		/*
		override protected function GetMask():Class
		{
			[Embed( 'mtsc15331.png' )]
			var src:Class;
			return src;
		}
		*/
	}
	
	
}