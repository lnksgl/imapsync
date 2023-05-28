<HTML>
<HEAD>
    <META http-equiv="Content-Type" content="text/html;charset=utf-8">
</HEAD>

<BODY>	
    <H1>Миграция почтового ящика</H1>
    <FORM method="POST">
	<TABLE>
	    <TR><TD><B>Исходный почтовый ящик:<B></TD>
	    <TD><INPUT NAME="mail1" SIZE=20 VALUE="">
	    
	    <TR><TD><B>Пароль:<B>
	    <TD><INPUT TYPE="password" NAME="pass1" SIZE=20 VALUE="">
	    
	    <TR><TD><B>IMAP сервер:<B></TD>
	    <TD><INPUT NAME="msrv1" SIZE=20 VALUE=""></TD>
	    
	    <TR><TD><B>Конечный почтовый ящик:<B></TD>
	    <TD><INPUT NAME="mail2" SIZE=20 VALUE="">
	    
	    <TR><TD><B>Пароль:<B>
	    <TD><INPUT TYPE="password" NAME="pass2" SIZE=20 VALUE="">
	    
	    <TR><TD><B>IMAP сервер:<B></TD>
	    <TD><INPUT NAME="msrv2" SIZE=20 VALUE=""></TD>
	    
	    <TR><TD><B>С какой даты осуществляется перенос:<B></TD>
	    
	    <TR><TD><B>Число:<B></TD>
	    <TD><INPUT NAME="day" SIZE=20 VALUE="">
	    
	    <TR><TD><B>Месяц:<B>
	    <TD>
	    	<select name = "month">
			<option>Jan</option>
			<option>Feb</option>
			<option>Mar</option>
			<option>Apr</option>
			<option>May</option>
			<option>Jun</option>
			<option>Jan</option>
			<option>Jul</option>
			<option>Aug</option>
			<option>Sep</option>
			<option>Oct</option>
			<option>Nov</option>
			<option>Dec</option>
	    	</select>
	    
	    <TR><TD><B>Год:<B></TD>
	    <TD><INPUT NAME="year" SIZE=20 VALUE=""></TD>
	   
	</TABLE>	    
	<INPUT formaction="check-size.php" TYPE="submit" NAME="submit" VALUE="Проверить размер">
	<INPUT formaction="migrate.php" TYPE="submit" NAME="submit" VALUE="Перенести">
    </FORM>
</BODY>
</HTML>
