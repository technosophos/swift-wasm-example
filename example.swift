// This gives us `getenv`
import WASILibc

// Get the name from the QUERY_STRING, or else use a sensible default.
func getName() -> String {
    // This will be our default name
    let defaultName = "there"
    let rawName = CommandLine.arguments[1]
    return rawName == "" ? defaultName : rawName
}

// Print an HTML welcome message
func printPage(name: String) {
    
    // Create a simple HTML document, substituting name.
    let message = """
    content-type: text/html

    <html>
    <body>
      <h1>Hello, \(name)!</h1>
      <p>It's nice to see you.</p>
    </body>
    </html>
    """
    print(message)
}

// Get the name from the query params
let name = getName()

// Write the webpage to STDOUT.
printPage(name: name)
