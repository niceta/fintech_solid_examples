import UIKit
//
//class Service {
//    var id: String
//
//    init(id: String) {
//        self.id = id
//    }
//
//    func fetch() {
//        print("fetch")
//    }
//}
//
//class BestService {
//    func fetch() {
//        print("fetch")
//    }
//}
//
//class Sender {
//    private var service: Service
//
//    init(service: Service) {
//        self.service = service
//    }
//
//    func doSomething() {
//        service.fetch()
//    }
//}
//
//let service = Service(id: "1")
//let sender = Sender(service: service)
//sender.doSomething()
//
//let bestService = BestService()
//let bestSender = Sender(service: bestService)
//bestSender.doSomething()















protocol ServiceProtocol {
    func fetch()
}

class Service: ServiceProtocol {
    var id: String

    init(id: String) {
        self.id = id
    }

    func fetch() {
        print("fetch")
    }
}

class BestService: ServiceProtocol {
    func fetch() {
        print("best fetch")
    }
}

class Sender {
    private var service: ServiceProtocol

    init(service: ServiceProtocol) {
        self.service = service
    }

    func doSomething() {
        service.fetch()
    }
}

let service = Service(id: "1")
let sender = Sender(service: service)
sender.doSomething()

let bestService = BestService()
let bestSender = Sender(service: bestService)
bestSender.doSomething()
