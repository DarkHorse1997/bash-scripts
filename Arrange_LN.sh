 
for folder in `ls`
do 
    echo $folder; 
    cd $folder
    for n in {01..15}
    do 
       name = $folder - Volume $n;
       echo $name
       mkdir name
       mv  $name* $name
    done
    cd ..
    
       
    
    

done
