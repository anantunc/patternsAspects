<cfoutput>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Pattern Aspects</title>
	</head>

	<body style="font-family: Verdana; font-size: 12px; line-height: 24px;">
		<table><tr>
			<td style="border-right: solid black 2px; padding: 15px; vertical-align:top; ">
				<a href="index.cfm?event=factory">Factory</a>	<br>
				<a href="index.cfm?event=observer">Observer</a> <br>
				<a href="index.cfm?event=decorator">Decorator</a>	<br>
				<a href="index.cfm?event=frontcontroller">Front Controller</a>	<br>
				<a href="index.cfm?event=servant">Servant</a>	<br>
			</td>
			<td style="padding: 15px;">
				#renderView()#
			</td>
		</tr></table>
	</body>
</html>
</cfoutput>