﻿package com.videogamecheatsultra.ComponentFace{		import flash.display.MovieClip;	import flash.events.TouchEvent;	import flash.events.Event;	import flash.text.TextFormatAlign;	import flash.text.TextFormat;		public class UIButton extends MovieClip	{				public function UIButton(text:String)		{			stop();			this.addEventListener(Event.ADDED_TO_STAGE, init);			butLabel.text = text;		}				protected function init(e:Event = null)		{			this.addEventListener(TouchEvent.TOUCH_BEGIN, pressingButton);			stage.addEventListener(TouchEvent.TOUCH_END, endPress);			if(skin.width < butLabel.textWidth)			{				skin.width = butLabel.textWidth + 10;				skin.x = 0;								butLabel.width = butLabel.textWidth + 5;				butLabel.x = 0;			}else			{				var myFormat = new TextFormat();				myFormat.align = "center";				butLabel.setTextFormat(myFormat);			}		}				protected function pressingButton(e:TouchEvent):void		{			this.gotoAndStop(2);			if(skin.width < butLabel.textWidth)			{				skin.width = butLabel.textWidth + 10;				skin.x = 0;			}		}				protected function endPress(e:TouchEvent):void		{			this.gotoAndStop(1);			if(skin.width < butLabel.textWidth)			{				skin.width = butLabel.textWidth + 10;				skin.x = 0;			}		}			}	}