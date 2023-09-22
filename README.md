# Error
A constructor similar to js Error class

Credits : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/Error

# Possible parameters
```
@param {string} message     A human-readable description of the error.
@param {struct} options     An object that has the following properties: longMessage Optional A string value indicating to exact cause of the message, may also contain the brift message passed.
@param {string} script      The script/event that raised this error, reflected in the script property. Defaults to the name of the script/event containing the code that called the Error() constructor.
@param {real}	lineNumber  The line number within the script/event on which the error was raised, reflected in the lineNumber property. Defaults to the line number containing the Error() constructor invocation.

new Error()
new Error(message)
new Error(message, options)
new Error(message, script)
new Error(message, script, lineNumber)
```

#Basic usage
```gml
var err = new Error("testing");
try{
  throw err
}catch(e){show_debug_message(e.toString());}
```
