import SwiftUI

public class RequestBuilder : ObservableObject{
    public static func getInstance() -> RequestBuilder{
        if let instance = RequestBuilder.instance{
            return instance
        }
        
        RequestBuilder.instance = RequestBuilder()
        
        return instance!
        
    }
    var components = URLComponents()
    private static var instance: RequestBuilder? = nil
    
    @Published var token: String? = nil
    private init(){
        
        components.scheme = "https"
        components.host = "fdjmback.onrender.com"
        components.path = ""
        
            
        
    }
    
    func urlRequest() -> URLRequest{
        
        var urlRequest = URLRequest(url: RequestBuilder.getInstance().components.url!)
                
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            if let token = self.token{
                print("rrr")
                urlRequest.addValue(token.replacingOccurrences(of: "Bearer", with: ""), forHTTPHeaderField: "Authorization" )
            }
        print (urlRequest.allHTTPHeaderFields)
        
        return urlRequest
            
        
        
    }
}
