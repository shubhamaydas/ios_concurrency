import Foundation

class CustomThread {
    func createThread() {
        let thread: Thread = Thread(target: self, selector: #selector(selectMethod), object: nil);
        thread.start()
    }
    
    @objc func selectMethod() {
        print("Thread Created")
    }

}

let thread = CustomThread()
thread.createThread()
