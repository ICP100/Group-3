import Debug "mo:base/Debug";
import Buffer "mo:base/Buffer";

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

    

  


};