import Debug "mo:base/Debug";
import Buffer "mo:base/Buffer";
import Iter "mo:base/Iter";

actor HelloWorld {
  // Create a buffer to hold tasks (each task is just a Text)
  let tasks = Buffer.Buffer<Text>(10);

  // Add a task to the buffer
  public func addTask(task: Text): async Bool {
    tasks.add(task);  // Add task to the buffer
    return true;
  };

  // Get all tasks in the buffer
  public func printArray(): async () {
    for (i in tasks.vals()) {
      Debug.print(i);  // Print each task
    };
  };


func findIndex(buffer: Buffer.Buffer<Text>, item: Text) : ?Nat {
        // Iterate through the buffer
        for (i in Iter.range(0, buffer.size() - 1)) {
            if (buffer.get(i) == item) {
                Debug.print("Item found");
                return ?i;
            }
        };
        return null; 
    };

    

  


};
