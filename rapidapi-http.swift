import Foundation

let headers = [
  "X-RapidAPI-Key": "59665160d2msheb2b594e00580acp121249jsne1053ba38c67",
  "X-RapidAPI-Host": "shazam-core.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://shazam-core.p.rapidapi.com/v1/charts/world")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
  if (error != nil) {
    print(error)
  } else {
    let httpResponse = response as? HTTPURLResponse
    print(httpResponse)
  }
})

dataTask.resume()