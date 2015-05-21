<%

Function GetRecordSet(byval strConnectionString, byval strSQL)
	' -- given a valid SQL statement, returns a recordset with values
	
	const adUseClient = 3
	const adOpenForwardOnly = 0
	const adLockBatchOptimistic = 4

	
	' Create instance of connection object and then open the
	' connection.
	Dim objConn, objRS

	Set objConn = Server.CreateObject("ADODB.Connection")
	objConn.Open strConnectionString

	' Create instance of recordset object and open the
	' recordset object against a table.
	Set objRS = Server.CreateObject("ADODB.Recordset")

	' Setting the cursor location to client side is important
	' to get a disconnected recordset.
	objRS.CursorLocation = adUseClient
	objRS.Open strSQL, _
         objConn, _
         adOpenForwardOnly, _
         adLockBatchOptimistic

	' Disconnect the recordset.
	Set objRS.ActiveConnection = Nothing

	' -- Close the connection
	objConn.Close

	set objConn = Nothing
	
	' -- return the recordset
	Set GetRecordSet = objRS

End Function
%>

