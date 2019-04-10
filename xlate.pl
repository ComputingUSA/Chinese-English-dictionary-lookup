open (dictionary, '\mydocu~1\xlate\cedict.b5');
@ref=<dictionary>;

while ( 1 )
{
print ("QUERY? ");
chop($line = <STDIN>);
$line=~s/\[/\\\[/g;
($a,$b)=split(/ /,$line);
@preoutput=grep (/$a/, @ref);
@output=grep (/$b/,@preoutput);
print (@output);
};
