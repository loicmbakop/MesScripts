val=$(<$filename)
if ("$val" = "$variable") then 
	echo "1"
elif ("$val" != "$variable") then 
	echo "2"
fi




if "$parametre"== "$variable"
	then
		echo "le parametre lu $parametre correspond à $variable"
	else
		echo "le parametre saisi $variable ne correspond pas à celui lu $parametre "
	fi

done < "$filename"


echo "$parametre"
	if ($diff $parametre $variable =="") then
		echo "1"
	else 
		echo "2"
	fi

