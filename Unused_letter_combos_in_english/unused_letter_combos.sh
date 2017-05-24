#! /bin/bash

# unused_letter_combos.sh
# Aaron M. Duffy
# Not all combinations of letters are used in the english language. Because of rules about vowels and consonants and limitations of what sound combinations the human mouth can generate, there are many possible words that aren't used. What proportion of the total possible "wordspace" is unused for each length of word?

count2=0 ;
count3=0 ;
count4=0 ;
count5=0 ;
count6=0 ;
count7=0 ;
count8=0 ;
count9=0 ;
count10=0 ;
possible2=0 ;
possible3=0 ;
possible4=0 ;
possible5=0 ;
possible6=0 ;
possible7=0 ;
possible8=0 ;
possible9=0 ;
possible10=0 ;
for firstletter in {a..z}
do
    for secondletter in {a..z}
    do
        possible2=$((possible2 + 1)) ;
        wordcount=$(grep -m 1 -E "$firstletter$secondletter" words_cleaned.txt | wc -l) ;
        if [ $wordcount = "0" ] ; then
            echo "$firstletter$secondletter" ;
            count2=$(($count2 + 1)) ;
        else
            for thirdletter in {a..z}
            do
                possible3=$((possible3 + 1)) ;
                wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter" words_cleaned.txt | wc -l) ;
                if [ $wordcount = "0" ] ; then
                    echo "$firstletter$secondletter$thirdletter" ;
                    count3=$((count3 + 1)) ;
                else
                    for fourthletter in {a..z}
                    do
                        possible4=$((possible4 + 1)) ;
                        wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter" words_cleaned.txt | wc -l) ;
                        if [ $wordcount = "0" ] ; then
                            echo "$firstletter$secondletter$thirdletter$fourthletter" ;
                            count4=$((count4 + 1)) ;
                        else
                            for fifthletter in {a..z}
                            do
                                possible5=$((possible5 + 1)) ;
                                wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter$fifthletter" words_cleaned.txt | wc -l) ;
                                if [ $wordcount = "0" ] ; then
                                    #echo "$firstletter$secondletter$thirdletter$fourthletter$fifthletter" ;
                                    count5=$((count5 + 1)) ;
                                else
                                    for sixthletter in {a..z}
                                    do
                                        possible6=$((possible6 + 1)) ;
                                        wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter" words_cleaned.txt | wc -l) ;
                                        if [ $wordcount = "0" ] ; then
                                            #echo "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter" ;
                                            count6=$((count6 + 1)) ;
                                        else
                                            for seventhletter in {a..z}
                                            do
                                                possible7=$((possible7 + 1)) ;
                                                wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter" words_cleaned.txt | wc -l) ;
                                                if [ $wordcount = "0" ] ; then
                                                    #echo "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter" ;
                                                    count7=$((count7 + 1)) ;
                                                else
                                                    for eighthletter in {a..z}
                                                    do
                                                        possible8=$((possible8 + 1)) ;
                                                        wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter$eighthletter" words_cleaned.txt | wc -l) ;
                                                        if [ $wordcount = "0" ] ; then
                                                            #echo "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter$eighthletter" ;
                                                            count8=$((count8 + 1)) ;
                                                        else
                                                            for ninthletter in {a..z}
                                                            do
                                                                possible9=$((possible9 + 1)) ;
                                                                wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter$eighthletter$ninthletter" words_cleaned.txt | wc -l) ;
                                                                if [ $wordcount = "0" ] ; then
                                                                    #echo "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter$eighthletter$ninthletter" ;
                                                                    count9=$((count9 + 1)) ;
                                                                else
                                                                    for tenthletter in {a..z}
                                                                    do
                                                                        possible10=$((possible10 + 1)) ;
                                                                        wordcount=$(grep -m 1 -E "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter$eighthletter$ninthletter$tenthletter" words_cleaned.txt | wc -l) ;
                                                                        if [ $wordcount = "0" ] ; then
                                                                            #echo "$firstletter$secondletter$thirdletter$fourthletter$fifthletter$sixthletter$seventhletter$eighthletter$ninthletter$tenthletter" ;
                                                                            count10=$((count10 + 1)) ;
                                                                        fi
                                                                    done
                                                                fi
                                                            done
                                                        fi
                                                    done
                                                fi
                                            done
                                        fi
                                    done
                                fi
                            done
                        fi
                    done
                fi
            done
        fi
    done
done
echo "$count2 unused 2 letter combos of $possible2 possible" ;
echo "$count3 unused 3 letter combos of $possible3 possible" ;
echo "$count4 unused 4 letter combos of $possible4 possible" ;
echo "$count5 unused 5 letter combos of $possible5 possible" ;
echo "$count6 unused 6 letter combos of $possible6 possible" ;
echo "$count7 unused 7 letter combos of $possible7 possible" ;
echo "$count8 unused 8 letter combos of $possible8 possible" ;
echo "$count9 unused 9 letter combos of $possible9 possible" ;
echo "$count10 unused 10 letter combos of $possible10 possible" ;
