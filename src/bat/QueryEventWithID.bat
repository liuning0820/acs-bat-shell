del %temp%\query.txt 
wevtutil qe Application "/q:*[System [(EventID=1309)]]" /f:text /rd:true /c:1 > %temp%\query.txt