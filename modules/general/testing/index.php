<?php

//just dummy module for testing purposes
error_reporting(E_ALL);
if (cfr('ROOT')) {
    $pc=new PixelCraft();
    $pc->loadImage('exports/1.jpg');
    
    $pc->createImage(640,480);
    $pc->loadImage('skins/unicornwrong.png');

    $pc->addColor('white',255,255,255);
    $pc->addColor('black',0,0,0);
    $pc->addColor('red',255,0,0);
    $pc->addColor('blue',0,0,255);
    $pc->addColor('yellow',255,255,0);

    //$pc->fill('black');
    $pc->setLineWidth(5);
   
        for ($x=0;$x<600;$x++) {
            $pc->drawPixel($x,5,'blue');
        }

        for ($y=0;$y<400;$y++) {
            $pc->drawPixel(5,$y,'yellow');
        }
    
        $pc->drawString(20,20,'some test text','red',5,false);
        $pc->drawString(40,200,'some test text','red',5,true);

        $pc->setLineWidth(20);
        $pc->drawRectangle(100,100,200,200,'blue');

        $pc->setFontSize(18);
        $pc->drawText(200,500,'test TTF ну і з кирилицею','red');
        $pc->drawLine(100,100,200,200,'yellow');


        $pc->loadWatermark('skins/taskbar/exhorse.png');
        $pc->drawWatermark(false,380,100);
        
        
        $pc->saveImage(null,'png');
        
       

}
