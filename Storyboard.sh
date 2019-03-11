#!/bin/bash

clear

declare -a arr=("en-US")

testing="iphone6plus"
testing="iphone5"
testing="iphone4s"
testing="ipadpro"
testing="ipadair2"
testing="iphone6"

testing=""

#colours
colour_bg='rgba(252,232,13,1)' #background yellow
colour_band_border='rgb(77,77,0)'
colour_band_fill='rgba(46,204,113,1)' #green
colour_band_text='rgb(255,255,255)' #white
colour_band_stroke='rgb(150,150,150)'
colour_bullet_text='rgb(47,132,202)'
colour_bullet_stroke='rgb(255,255,255)' #white

bullet_stroke_width=1
band_stroke_width=2

colour_band_textbox="cyan"
colour_bullet_textbox="cyan"

if [ "$testing"  == "" ] 
   then
   colour_band_textbox="none"
   colour_bullet_textbox="none"

fi

suffix="_framed"
#suffix=""
   
#files
device_image_folder="/Users/jm/Dropbox/Code_ObjC/Screenshots/STT_V2_HD/"

full_device_image_folder=""

output_folder="/Users/jm/Dropbox/Code_ObjC/Screenshots/Scripting/STT_V2_HD/Output/"

#size / positions are x,y w x h etc

#sh /Users/jm/Dropbox/Code_ObjC/STT_V2_HD/Snapshot

rm -f $output_folder*.png

for i in "${arr[@]}"
do
   rm -f $output_folder$i/*.png
done

## now loop through the above array
for i in "${arr[@]}"
do

   #strings 
   if [ "$i" == "en-US" ]
      then

      band_string1="1. Guides your child through learning"
      band_string2="2. Like you're reading to your child"
      band_string3="3. Reads out the question"
      band_string4="4. See where they went wrong straight away"
      band_string5="5. Shows how well they did"

      bullet_string1="Optional multiple students"
      bullet_string2="Touch ID settings"
      bullet_string3="Real voices or Siri"
      bullet_string4="Cute monkey sounds"
      bullet_string5="Aimed at boys and girls"
      bullet_string6="Easy to use"
      bullet_string7="Makes times tables fun"
      bullet_string8="iCloud sync between devices"
      bullet_string9="Pass times table tests easily"
      bullet_string10="Download and help your child"
   fi

   full_device_image_folder=$device_image_folder$i/

   echo "Full device image folder="$full_device_image_folder

   if [ "$testing" == "iphone6plus" ] || [ "$testing"  == "" ] 
      then

      font_size_band=90
      font_size_bullet=70

      band_textbox_size="900x320"
      bullet_textbox_size="700x220"
      bullet_textbox_size="800x220"

      #device_resize="1473x755"
      device_resize="1600x820"
      device_resize="1648x845"

      device_file_preffix="iPhone6Plus"
      output_file6p=$output_folder"iphone6plus-$i.png"

      #iPhone6plus      iPhone6plus       iPhone6plus    iPhone6plus       iPhone6plus    iPhone6plus    iPhone6plus    iPhone6plus    iPhone6plus    iPhone6plus    iPhone6plus
      convert -size 6378x2208 xc:$colour_bg -strokewidth 0 -fill lightgray \
      	-font /Users/jm/Dropbox/ArtShared/Apps/STTV2/Final\ files/Psds/Comfortaa_Bold.ttf \
         \( $full_device_image_folder$device_file_preffix-main_start_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry -186-50 -composite \
         \( $full_device_image_folder$device_file_preffix-learn_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +1093+1407 -composite \
         \( $full_device_image_folder$device_file_preffix-test_multi_child$suffix.png -background transparent -resize $device_resize \) -geometry +2372-49 -composite \
         \( $full_device_image_folder$device_file_preffix-wrong_answer_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry +3664+1407 -composite \
         \( $full_device_image_folder$device_file_preffix-results_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +4943-50 -composite \
         -stroke $colour_band_border -strokewidth 1 -fill $colour_band_fill -draw "rectangle 0,909 6378,1299 "  \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string1" -flatten \) -gravity none -geometry +150+945 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string2" -flatten \) -gravity none -geometry +1444+945 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string3" -flatten \) -gravity none -geometry +2728+945 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string4" -flatten \) -gravity none -geometry +4012+945 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string5" -flatten \) -gravity none -geometry +5296+945 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string1" -flatten \) -gravity none -geometry +221+1540 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string2" -flatten \) -gravity none -geometry +221+1740 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string3" -flatten \) -gravity none -geometry +1505+240 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string4" -flatten \) -gravity none -geometry +1505+440 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string5" -flatten \) -gravity none -geometry +2789+1540 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string6" -flatten \) -gravity none -geometry +2789+1740 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string7" -flatten \) -gravity none -geometry +4073+240 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string8" -flatten \) -gravity none -geometry +4073+440 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string9" -flatten \) -gravity none -geometry +5357+1540 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke -gravity center caption:"$bullet_string10" -flatten \) -gravity none -geometry +5357+1740 -composite \
         -strokewidth 0 -fill lightgray \
         -draw "rectangle 1242,0 1284,2208 "  \
         -draw "rectangle 2526,0 2568,2208 "  \
         -draw "rectangle 3810,0 3852,2208 "  \
         -draw "rectangle 5094,0 5136,2208 "  \
         $output_file6p

         if [ "$testing"  == "" ] 
            then
            #chop into screen shots #screen size FINE !!!  1242 x 2208
            convert $output_file6p -crop 1242x2208+0+0  $output_folder$i/"iphone6plus-5_5in-$i-1.png"
            convert $output_file6p -crop 1242x2208+1284+0 $output_folder$i/"iphone6plus-5_5in-$i-2.png"
            convert $output_file6p -crop 1242x2208+2568+0 $output_folder$i/"iphone6plus-5_5in-$i-3.png"
            convert $output_file6p -crop 1242x2208+3852+0 $output_folder$i/"iphone6plus-5_5in-$i-4.png"
            convert $output_file6p -crop 1242x2208+5136+0 $output_folder$i/"iphone6plus-5_5in-$i-5.png"
         fi

         echo "   iphone6plus.. $i  done"
   fi

   if [ "$testing" == "iphone6" ] || [ "$testing"  == "" ] 
      then

      font_size_band=60
      font_size_bullet=50
      font_size_bullet=48

      band_textbox_size="650x160"
      bullet_textbox_size="500x140"
      bullet_textbox_size="600x140"
      bullet_textbox_size="550x140"

      device_resize="1000x490"

      device_file_preffix="iPhone6"
      output_file6=$output_folder"iphone6-$i.png"

      #iPhone6      iPhone6       iPhone6    iPhone6       iPhone6    iPhone6    iPhone6    iPhone6    iPhone6    iPhone6    iPhone6
      convert -size 3870x1334 xc:$colour_bg -strokewidth 0 -fill lightgray \
         -font /Users/jm/Dropbox/ArtShared/Apps/STTV2/Final\ files/Psds/Comfortaa_Bold.ttf \
         \( $full_device_image_folder$device_file_preffix-main_start_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry -96-26 -composite \
         \( $full_device_image_folder$device_file_preffix-learn_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +685+846 -composite \
         \( $full_device_image_folder$device_file_preffix-test_multi_child$suffix.png -background transparent -resize $device_resize \) -geometry +1440-26 -composite \
         \( $full_device_image_folder$device_file_preffix-wrong_answer_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry +2246+846 -composite \
         \( $full_device_image_folder$device_file_preffix-results_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +3026-26 -composite \
         -stroke $colour_band_border -strokewidth 1 -fill $colour_band_fill -draw "rectangle 0,533,3870,771"  \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string1" -flatten \) -gravity none -geometry +49+571 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string2" -flatten \) -gravity none -geometry +828+571 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string3" -flatten \) -gravity none -geometry +1612+571 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string4" -flatten \) -gravity none -geometry +2384+571 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string5" -flatten \) -gravity none -geometry +3166+571 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string1" -flatten \) -gravity none -geometry +75+875 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string2" -flatten \) -gravity none -geometry +75+1100 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string3" -flatten \) -gravity none -geometry +865+63 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string4" -flatten \) -gravity none -geometry +865+288 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string5" -flatten \) -gravity none -geometry +1655+875 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string6" -flatten \) -gravity none -geometry +1655+1100 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string7" -flatten \) -gravity none -geometry +2474+63 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string8" -flatten \) -gravity none -geometry +2474+288 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string9" -flatten \) -gravity none -geometry +3248+875 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string10" -flatten \) -gravity none -geometry +3248+1100 -composite \
         -strokewidth 0 -fill lightgray \
         -draw "rectangle 750,0  779,1334 "  \
         -draw "rectangle 1530,0  1559,1334 "  \
         -draw "rectangle 2310,0  2339,1334 "  \
         -draw "rectangle 3090,0  3119,1334 "  \
         $output_file6

         if [ "$testing"  == "" ] 
            then
            #chop into screen shots #screen size FINE!!
            convert $output_file6 -crop 750x1334+0+0 $output_folder$i/"iphone6-4_7in-$i-1.png"
            convert $output_file6 -crop 750x1334+780+0 $output_folder$i/"iphone6-4_7in-$i-2.png"
            convert $output_file6 -crop 750x1334+1560+0 $output_folder$i/"iphone6-4_7in-$i-3.png"
            convert $output_file6 -crop 750x1334+2340+0 $output_folder$i/"iphone6-4_7in-$i-4.png"
            convert $output_file6 -crop 750x1334+3120+0 $output_folder$i/"iphone6-4_7in-$i-5.png"
         fi

         echo "   iphone6...... $i  done"
   fi

   if [ "$testing" == "iphone5" ] || [ "$testing"  == "" ] 
      then

      font_size_band=58
      font_size_bullet=45

      band_textbox_size="625x160"
      bullet_textbox_size="430x140"

      device_resize="894x426"

      device_file_preffix="iPhone5s"
      output_file5=$output_folder"iphone5-$i.png"

      #iPhone5      iPhone5       iPhone5    iPhone5       iPhone5    iPhone5    iPhone5    iPhone5    iPhone5    iPhone5    iPhone5
      convert -size 3308x1136 xc:$colour_bg -strokewidth 0 -fill lightgray \
         -font /Users/jm/Dropbox/ArtShared/Apps/STTV2/Final\ files/Psds/Comfortaa_Bold.ttf \
         \( $full_device_image_folder$device_file_preffix-main_start_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry -98+10 -composite \
         \( $full_device_image_folder$device_file_preffix-learn_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +570+712 -composite \
         \( $full_device_image_folder$device_file_preffix-test_multi_child$suffix.png -background transparent -resize $device_resize \) -geometry +1212+10 -composite \
         \( $full_device_image_folder$device_file_preffix-wrong_answer_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry +1903+712 -composite \
         \( $full_device_image_folder$device_file_preffix-results_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +2571+10 -composite \
         -stroke $colour_band_border -strokewidth 1 -fill $colour_band_fill -draw "rectangle 0,475,3308,666" \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string1" -flatten \) -gravity none -geometry +5+490 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string2" -flatten \) -gravity none -geometry +673+490 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string3" -flatten \) -gravity none -geometry +1340+490 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string4" -flatten \) -gravity none -geometry +2010+490 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string5" -flatten \) -gravity none -geometry +2680+490 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string1" -flatten \) -gravity none -geometry +80+738 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string2" -flatten \) -gravity none -geometry +80+920 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string3" -flatten \) -gravity none -geometry +773+57 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string4" -flatten \) -gravity none -geometry +773+239 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string5" -flatten \) -gravity none -geometry +1436+738 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string6" -flatten \) -gravity none -geometry +1436+920 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string7" -flatten \) -gravity none -geometry +2109+57 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string8" -flatten \) -gravity none -geometry +2109+239 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string9" -flatten \) -gravity none -geometry +2771+738 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string10" -flatten \) -gravity none -geometry +2771+920 -composite \
         -strokewidth 0 -fill lightgray \
         -draw "rectangle 640,0  666,1136 "  \
         -draw "rectangle 1307,0  1333,1136 "  \
         -draw "rectangle 1974,0  2000,1136 "  \
         -draw "rectangle 2641,0  2667,1136 "  \
         $output_file5

         if [ "$testing"  == "" ] 
            then
            #chop into screen shots #screen size FINE !!!  640 x 1136
            convert $output_file5 -crop 640x1136+0+0 $output_folder$i/"iphone5-4in-$i-1.png"
            convert $output_file5 -crop 640x1136+667+0 $output_folder$i/"iphone5-4in-$i-2.png"
            convert $output_file5 -crop 640x1136+1334+0 $output_folder$i/"iphone5-4in-$i-3.png"
            convert $output_file5 -crop 640x1136+2001+0 $output_folder$i/"iphone5-4in-$i-4.png"
            convert $output_file5 -crop 640x1136+2668+0 $output_folder$i/"iphone5-4in-$i-5.png"
         fi

         echo "   iphone5...... $i  done"
   fi

    temp_colour_bullet_stroke=$colour_bullet_stroke
    colour_bullet_stroke=$colour_bullet_text

   colour_bullet_stroke=$temp_colour_bullet_stroke

   if [ "$testing" == "ipadpro" ] || [ "$testing"  == "" ] 
      then

      font_size_band=140
      font_size_bullet=110

      band_textbox_size="1500x380"
      bullet_textbox_size="1700x300"

      device_resize="2150x1551"

      device_file_preffix="iPadPro(12.9-inch)"
      output_filepro=$output_folder"ipadpro-$i.png"

      #ipadpro       ipadpro     ipadpro     ipadpro     ipadpro     ipadpro     ipadpro     ipadpro     ipadpro        ipadpro        ipadpro        ipadpro        ipadpro        ipadpro
      convert -size 11296x2732 xc:$colour_bg -strokewidth 0 -fill lightgray \
         -font /Users/jm/Dropbox/ArtShared/Apps/STTV2/Final\ files/Psds/Comfortaa_Bold.ttf \
         \( $full_device_image_folder$device_file_preffix-main_start_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry -35+455 -composite \
         \( $full_device_image_folder$device_file_preffix-learn_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +2290+1140 -composite \
         \( $full_device_image_folder$device_file_preffix-test_multi_child$suffix.png -background transparent -resize $device_resize \) -geometry +4565+455 -composite \
         \( $full_device_image_folder$device_file_preffix-wrong_answer_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry +6905+1140 -composite \
         \( $full_device_image_folder$device_file_preffix-results_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +9215+455 -composite \
         -stroke $colour_band_border -strokewidth 1 -fill $colour_band_fill -draw "rectangle 0,2 11296,422 "  \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string1" -flatten \) -gravity none -geometry +290+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string2" -flatten \) -gravity none -geometry +2600+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string3" -flatten \) -gravity none -geometry +4890+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string4" -flatten \) -gravity none -geometry +7240+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string5" -flatten \) -gravity none -geometry +9540+15 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string1" -flatten \) -gravity none -geometry +190+2050 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string2" -flatten \) -gravity none -geometry +190+2350 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string3" -flatten \) -gravity none -geometry +2500+470 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string4" -flatten \) -gravity none -geometry +2500+770 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string5" -flatten \) -gravity none -geometry +4790+2050 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string6" -flatten \) -gravity none -geometry +4790+2350 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string7" -flatten \) -gravity none -geometry +7140+470 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string8" -flatten \) -gravity none -geometry +7140+770 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string9" -flatten \) -gravity none -geometry +9440+2050 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string10" -flatten \) -gravity none -geometry +9440+2350 -composite \
         -strokewidth 0 -fill lightgray \
         -draw "rectangle 2048,0  2311,2732 "  \
         -draw "rectangle 4360,0  4623,2732 "  \
         -draw "rectangle 6672,0  6935,2732 "  \
         -draw "rectangle 8984,0  9247,2732 "  \
         $output_filepro

         if [ "$testing"  == "" ] 
            then
            #chop into screen shots #screen size FINE !!!  2048 x 2732
            convert $output_filepro -crop 2048x2732+0+0 $output_folder$i/"ipadpro-12_9in-$i-1.png"
            convert $output_filepro -crop 2048x2732+2312+0 $output_folder$i/"ipadpro-12_9in-$i-2.png"
            convert $output_filepro -crop 2048x2732+4624+0 $output_folder$i/"ipadpro-12_9in-$i-3.png"
            convert $output_filepro -crop 2048x2732+6936+0 $output_folder$i/"ipadpro-12_9in-$i-4.png"
            convert $output_filepro -crop 2048x2732+9248+0 $output_folder$i/"ipadpro-12_9in-$i-5.png"
         fi

         echo "   ipadpro...... $i  done"
   fi

   if [ "$testing" == "ipadair2" ] || [ "$testing"  == "" ] 
      then

      font_size_band=110
      font_size_bullet=80

      band_textbox_size="1200x300"
      bullet_textbox_size="1500x150"
      
      device_resize="1200x848"
      device_resize="1800x1272"
      device_resize="1700x1201"
      
      device_file_preffix="iPadAir2"
      output_fileair=$output_folder"ipadair2-$i.png"
      
      #ipadair2       ipadair2     ipadair2     ipadair2     ipadair2     ipadair2     ipadair2     ipadair2     ipadair2        ipadair2        ipadair2        ipadair2        ipadair2        ipadair2
      convert -size 8228x2048 xc:$colour_bg -strokewidth 0 -fill lightgray \
         -font /Users/jm/Dropbox/ArtShared/Apps/STTV2/Final\ files/Psds/Comfortaa_Bold.ttf \
         \( $full_device_image_folder$device_file_preffix-main_start_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry -60+455 -composite \
         \( $full_device_image_folder$device_file_preffix-learn_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +1610+710 -composite \
         \( $full_device_image_folder$device_file_preffix-test_multi_child$suffix.png -background transparent -resize $device_resize \) -geometry +3265+455 -composite \
         \( $full_device_image_folder$device_file_preffix-wrong_answer_multi_child$suffix.png -background transparent -rotate -2 -resize $device_resize \) -geometry +4960+710 -composite \
         \( $full_device_image_folder$device_file_preffix-results_multi_child$suffix.png -background transparent -rotate +2 -resize $device_resize \) -geometry +6630+455 -composite \
         -stroke $colour_band_border -strokewidth 1 -fill $colour_band_fill -draw "rectangle 0,2 8228,322 "  \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string1" -flatten \) -gravity none -geometry +162+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string2" -flatten \) -gravity none -geometry +1840+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string3" -flatten \) -gravity none -geometry +3515+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string4" -flatten \) -gravity none -geometry +5190+15 -composite \
         \( -size $band_textbox_size -background $colour_band_textbox -fill $colour_band_text -pointsize $font_size_band -strokewidth $band_stroke_width -stroke $colour_band_stroke -gravity center caption:"$band_string5" -flatten \) -gravity none -geometry +6860+15 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string1" -flatten \) -gravity none -geometry +12+1700 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string2" -flatten \) -gravity none -geometry +12+1850 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string3" -flatten \) -gravity none -geometry +1690+340 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string4" -flatten \) -gravity none -geometry +1690+490 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string5" -flatten \) -gravity none -geometry +3365+1700 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string6" -flatten \) -gravity none -geometry +3365+1850 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string7" -flatten \) -gravity none -geometry +5040+340 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string8" -flatten \) -gravity none -geometry +5040+490 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string9" -flatten \) -gravity none -geometry +6710+1700 -composite \
         \( -size $bullet_textbox_size -background $colour_bullet_textbox -fill $colour_bullet_text -pointsize $font_size_bullet -strokewidth $bullet_stroke_width -stroke $colour_bullet_stroke  -gravity center caption:"$bullet_string10" -flatten \) -gravity none -geometry +6710+1850 -composite \
         -strokewidth 0 -fill lightgray \
         -draw "rectangle 1536,0  1672,2048 "  \
         -draw "rectangle 3209,0  3345,2048 "  \
         -draw "rectangle 4882,0  5018,2048 "  \
         -draw "rectangle 6555,0  6691,2048 "  \
         $output_fileair
      
         if [ "$testing"  == "" ] 
            then
            #chop into screen shots 
            #screen size WRONG !!! 1536 x 2048
            convert $output_fileair -crop 1536x2048+0+0 $output_folder$i/"ipadair2-9_7in-$i-1.png"
            convert $output_fileair -crop 1536x2048+1673+0 $output_folder$i/"ipadair2-9_7in-$i-2.png"
            convert $output_fileair -crop 1536x2048+3346+0 $output_folder$i/"ipadair2-9_7in-$i-3.png"
            convert $output_fileair -crop 1536x2048+5019+0 $output_folder$i/"ipadair2-9_7in-$i-4.png"
            convert $output_fileair -crop 1536x2048+6692+0 $output_folder$i/"ipadair2-9_7in-$i-5.png"
         fi

         echo "   ipadair2..... $i  done"
      fi

   echo " "
done

say done

