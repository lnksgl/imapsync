<HTML>
<HEAD>
    <META http-equiv="Content-Type" content="text/html;charset=utf-8">
	<style>
		a {
			display: none;
		}
		div {
			display: block;
		}
	</style>
</HEAD>

<BODY>	
    <DIV id="form">
		<H1>Миграция почтового ящика</H1>
		<FORM method="POST">
			<TABLE>
				<TR><TD><B>Исходный почтовый ящик:<B></TD>
				<TD><INPUT NAME="mail1" SIZE=20 VALUE="">
				
				<TD><B>Пароль:<B>
				<TD><INPUT NAME="pass1" SIZE=20 VALUE="">
				
				<TD><B>IMAP сервер:<B></TD>
				<TD><INPUT NAME="msrv1" SIZE=20 VALUE=""></TD>
				
				<TR><TD><B>Конечный почтовый ящик:<B></TD>
				<TD><INPUT NAME="mail2" SIZE=20 VALUE="">
				
				<TD><B>Пароль:<B>
				<TD><INPUT NAME="pass2" SIZE=20 VALUE="">
				
				<TD><B>IMAP сервер:<B></TD>
				<TD><INPUT NAME="msrv2" SIZE=20 VALUE=""<TD>
			
			</TABLE>	    
		<INPUT id="size" formaction="check-size.php" TYPE="submit" NAME="submit" VALUE="Проверить размер">
		<INPUT id="migrate" formaction="migrate.php" TYPE="submit" NAME="submit" VALUE="Перенести">
		</FORM>
	</DIV>

	<a id="b1" display="none">Ожидайте письмо в Zammad с информацией о весе почтовых ящиков.</a>
	<a id="b2" display="none">Заявка на миграцию принята. Ожидайте уведомление в Zammad.</a>


	<SCRIPT src="/main.js"></SCRIPT>
</BODY>
</HTML>
