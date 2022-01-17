

struct Car{
    private var make: String = "Toyota"
    private var model:String = "Camry"
    private var year: String = "1999"
    private var details:String{
        year + " " + make + " " + model
    }
    
    
    func getDetails() -> String{
        return details
    }
}
