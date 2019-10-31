protocol Worker {
    func work()
    func sleep()
}

class Person: Worker {
    func work() {
        print("I'm working now")
    }

    func sleep() {
        print("I'm sleeping now")
    }
}

class Robot: Worker {
    func work() {
        print("I'm working now")
    }

    func sleep() {
    }
}
let person = Person()
person.work()
person.sleep()

let robot = Robot()
robot.work()





















//protocol Workable {
//    func work()
//}
//
//protocol Sleepable {
//    func sleep()
//}
//
//class Person: Workable, Sleepable {
//    func work() {
//        print("I'm working now")
//    }
//
//    func sleep() {
//        print("I'm sleeping now")
//    }
//}
//
//class Robot: Workable {
//    func work() {
//        print("I'm working now")
//    }
//}
//let person = Person()
//person.work()
//person.sleep()
//
//let robot = Robot()
//robot.work()
