<%@ LANGUAGE = VBScript %><%
  tmpPath = "d:\Inetpub\wwwroot\<domain>\cgi-bin\wcount\data\"
  tmpFileName = Request ("File")
  returnURL = Request ("URL")
  Sub Obliterate
    'Create file for writing
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set TheFile = fs.CreateTextFile(tmpPath + tmpFileName, True)
    'Write a 0 file
    TheFile.WriteLine("0")
    'Close the file
    TheFile.Close
%>    <p><b><%= tmpFileName%></b> has been reset to 0.</p><%
 End Sub
%><html>
  <head>
    <title>Obliterate - <%= tmpFileName %></title><%
    If tmpFileName <> "" Then %>
    <meta http-equiv="REFRESH" content="3; URL=<%= returnURL%>"><% End If %>
    <!-- Page by Ouija of ZiaNet, Inc. Modified by Tokind 04/11/00 with return URL & pathing to Zianet cgi-bin-->
  </head>
  <body>
<% If (Request("File") = "") Then
%>    <h1>No Counter file was specified to obliterate.</h1>
    <p>See <A HREF="http://www.zianet.com/support/countreset.htm">Count Reset</A> for assistance.</p><%
 Else Obliterate %>
<% End If %>
  </body>
</html>