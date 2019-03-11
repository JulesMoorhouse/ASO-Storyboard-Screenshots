
#5.5 inch display - 1080 x 1920 - 401 ppi - (iPhone 6+) - gap = 83.54  --------------------------------
convert -size 5732x1920 xc:white iphone6plus.png
convert iphone6plus.png -strokewidth 0 -fill lightgray -draw "rectangle 1080,0  1163,1920 " iphone6plus.png
convert iphone6plus.png -strokewidth 0 -fill lightgray -draw "rectangle 2243,0 2326,1920 " iphone6plus.png
convert iphone6plus.png -strokewidth 0 -fill lightgray -draw "rectangle 3406,0 3489,1920 " iphone6plus.png
convert iphone6plus.png -strokewidth 0 -fill lightgray -draw "rectangle 4569,0 4652,1920 " iphone6plus.png

#4.7 inch display - 750 x 1334 - 326 ppi - (iPhone 6) - gap = 67.91  --------------------------------
convert -size 4022x1334 xc:white iphone6.png
convert iphone6.png -strokewidth 0 -fill lightgray -draw "rectangle 750,0  818,1334 " iphone6.png
convert iphone6.png -strokewidth 0 -fill lightgray -draw "rectangle 1568,0  1636,1334 " iphone6.png
convert iphone6.png -strokewidth 0 -fill lightgray -draw "rectangle 2386,0  2454,1334 " iphone6.png
convert iphone6.png -strokewidth 0 -fill lightgray -draw "rectangle 3204,0  3272,1334 " iphone6.png

#4 inch display - 640 x 1146 - 326 ppi - (iPhone 5) - gap = 67.91  --------------------------------
convert -size 3472x1146 xc:white iphone5.png
convert iphone5.png -strokewidth 0 -fill lightgray -draw "rectangle 640,0  708,1146 " iphone5.png
convert iphone5.png -strokewidth 0 -fill lightgray -draw "rectangle 1348,0  1416,1146 " iphone5.png
convert iphone5.png -strokewidth 0 -fill lightgray -draw "rectangle 2056,0  2124,1146 " iphone5.png
convert iphone5.png -strokewidth 0 -fill lightgray -draw "rectangle 2764,0  2832,1146 " iphone5.png

#3.5 inch display - 640 x 940 - 326 ppi - (iPhone 4) - gap = 67.91  --------------------------------
convert -size 3472x940 xc:white iphone4.png
convert iphone4.png -strokewidth 0 -fill lightgray -draw "rectangle 640,0  708,940 " iphone4.png
convert iphone4.png -strokewidth 0 -fill lightgray -draw "rectangle 1348,0  1416,940 " iphone4.png
convert iphone4.png -strokewidth 0 -fill lightgray -draw "rectangle 2056,0  2124,940 " iphone4.png
convert iphone4.png -strokewidth 0 -fill lightgray -draw "rectangle 2764,0  2832,940 " iphone4.png

#12.9 inch display - 2737 x 2048 - 264 ppi - (iPad Pro) - gap = 55  --------------------------------
convert -size 10460x2737 xc:white ipadpro.png
convert ipadpro.png -strokewidth 0 -fill lightgray -draw "rectangle 2048,0  2103,2737 " ipadpro.png
convert ipadpro.png -strokewidth 0 -fill lightgray -draw "rectangle 4151,0  4206,2737 " ipadpro.png
convert ipadpro.png -strokewidth 0 -fill lightgray -draw "rectangle 6254,0  6309,2737 " ipadpro.png
convert ipadpro.png -strokewidth 0 -fill lightgray -draw "rectangle 8357,0  8412,2737 " ipadpro.png

#9.7 inch display - 1536 x 2048 - 264 ppi (iPad Air 2) - gap = 55  --------------------------------
convert -size 7900x1536 xc:white ipadair2.png
convert ipadair2.png -strokewidth 0 -fill lightgray -draw "rectangle 1536,0  1591,2048 " ipadair2.png
convert ipadair2.png -strokewidth 0 -fill lightgray -draw "rectangle 3127,0  3182,2048 " ipadair2.png
convert ipadair2.png -strokewidth 0 -fill lightgray -draw "rectangle 4718,0  4773,2048 " ipadair2.png
convert ipadair2.png -strokewidth 0 -fill lightgray -draw "rectangle 6309,0  6364,2048 " ipadair2.png

#9.7 inch display - 768 x 1024 - 132 ppi (iPad 2) - gap = 27.5  --------------------------------
convert -size 3949x768 xc:white ipad2.png
convert ipad2.png -strokewidth 0 -fill lightgray -draw "rectangle 768,0  795,1024 " ipad2.png
convert ipad2.png -strokewidth 0 -fill lightgray -draw "rectangle 1563,0  1590,1024 " ipad2.png
convert ipad2.png -strokewidth 0 -fill lightgray -draw "rectangle 2358,0  2385,1024 " ipad2.png
convert ipad2.png -strokewidth 0 -fill lightgray -draw "rectangle 3153,0  3180,1024 " ipad2.png

