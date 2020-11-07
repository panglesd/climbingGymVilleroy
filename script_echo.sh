openscad -o bla.echo ClimbingStructure.scad ;
cat bla.echo | sed -e "s/ECHO: //g" |sed -e 's/"//g' |sed -e "s/\[/ /g" | sed -e "s/]//g" |sed -e "s/,/ x/g" | sort | uniq -c   
