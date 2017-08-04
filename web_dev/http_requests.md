### Common HTTP Status Codes

#### Status codes are composed of a 3 digit number with the first of those digits indicating the class of the status code.  There are 5 classes of status code.
  1. 1xx - Represents a request informational messages
  2. 2xx - Represents a successful request
  3. 3xx - Represents a redirected request
  4. 4xx - Represents a client-side error
  5. 5xx - Represents a server-side error

#### Common HTTP Status Codes

1. 200
  * Code starts with 2 which represents a successful request (2xx)

2. 404
  * This is an error code
  * Error codes in the 400s denote that the error came from the client-side
  * 404 is the me most common error code, denoting the the requested resource is not found
  * This can arise from miss entering the URL or from the phenomenon called "linkrot" where as the web ages, the links in sites may go away but the sites with those links are not adjusted

  3. 403
    * As the 4xx denotes, this is a client-side error code.
    * 403 indicates that access to this resource is forbidden.  (Not an authentication problem which would be a 401 code)

  4. 500
    * This is a catch all server-side error code.  If no other 500 makes sense than this is used.
    * With many 5xx level errors, retrying could solve the problem

  5. 503
    * Indicates this web server is not available
    * Could arise from a number of problems including the server rebooting or undergoing maintenance

  6. 504
    * The 504 code indicates that the gateway timeout

* **Resources for more HTTP Status Codes**
[W3](https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.htmls)

## Difference between HTTP Methods: GET vs. POST

Put very simply the GET method request data from a specific resources while the POST submits data to be processed to a specific resource.  On multiple sites it discusses that sensitive data should not be transmitted via GET because this data is logged and accessible to third parties while it makes it way through between computer/servers.  Along these lines, GET requests are cached unlike POST requests, however data in a POST method might be used to create or update a resource.