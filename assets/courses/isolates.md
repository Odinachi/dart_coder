# Isolates

Imagine you have a **team of workers** 🧑‍🔧, and they all work in **different rooms**. They don’t talk to each other
directly, but each worker has their own job to do. If one worker is busy, it doesn’t stop the others from working in
their own rooms.

👉 In Dart, **isolates** are like **separate rooms for workers**. Each isolate does its own job **independently** from
others. They don’t share memory, but they can send messages to communicate.

---

## 🎁 Real-Life Analogy

| Real Life                                       | Dart Code                                    |
|-------------------------------------------------|----------------------------------------------|
| A **team of workers** in separate rooms         | Using **isolates** for parallel tasks        |
| Workers don’t share tools, but can talk         | Isolates can **send messages** to each other |
| One worker can be busy, and others keep working | Isolates run tasks **at the same time**      |

---

## 🧰 Example: Simple Isolate to Add Numbers

Let’s say we want to add numbers in parallel, using different workers (isolates). First, let's create a simple isolate:

```dart
import 'dart:async';
import 'dart:isolate';

// Function that will run in a separate isolate
void addNumbers(SendPort sendPort) {
  int result = 5 + 10; // Adding two numbers
  sendPort.send(result); // Sending the result back to main isolate
}

void main() async {
  // Create a ReceivePort to get messages from the isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate to do the work
  await Isolate.spawn(addNumbers, receivePort.sendPort);

  // Receive the result from the isolate
  receivePort.listen((data) {
    print("The result is: $data"); // It should print: The result is: 15
  });
}
```

---

## 📦 What Does This Code Do?

* **`ReceivePort`**: It's like a **mailbox** where you get messages from the isolate.
* **`SendPort`**: It's like a **postman** that sends messages to the mailbox.
* **`Isolate.spawn()`**: This creates a **new worker** in a separate room to do the job.
* **`sendPort.send()`**: Sends the result of the task to the main program.

---

## 🧒 How Is This Useful?

Imagine you have a huge job to do, like **sorting 1,000,000 numbers**. Instead of doing it all in one room, you can *
*split the task** into many small jobs and give each job to a separate isolate. That way, everything gets done faster!

---

## 🎨 More Fun Example: Running Multiple Isolates

Let’s say we want to calculate the sum of two large numbers in different isolates and get the total:

```dart
import 'dart:async';
import 'dart:isolate';

// Function to sum numbers in an isolate
void sumNumbers(SendPort sendPort) {
  int sum = 1 + 2 + 3 + 4 + 5; // Summing numbers
  sendPort.send(sum);
}

void main() async {
  // Create ReceivePorts to listen for messages from isolates
  ReceivePort receivePort1 = ReceivePort();
  ReceivePort receivePort2 = ReceivePort();

  // Spawn two isolates
  await Isolate.spawn(sumNumbers, receivePort1.sendPort);
  await Isolate.spawn(sumNumbers, receivePort2.sendPort);

  // Listen for the results
  receivePort1.listen((data) {
    print("Result from Isolate 1: $data"); // 15
  });

  receivePort2.listen((data) {
    print("Result from Isolate 2: $data"); // 15
  });
}
```

---

## 🧠 Why Use Isolates?

* **Parallel execution**: You can run multiple tasks at the same time, making things **faster**.
* **No shared memory**: Since isolates don’t share memory, they can’t accidentally mess with each other’s work.
* **Useful for heavy tasks**: If you have complex tasks (like image processing or calculations), isolates let you break
  them into smaller tasks to run separately.

---

## ⚠️ Important Points to Remember

* **Isolates don’t share memory**: Each isolate has its own memory and doesn’t see what others are doing.
* **Communication via messages**: They talk to each other by sending messages using `SendPort` and `ReceivePort`.
* **Useful for CPU-intensive tasks**: If your app needs to do something that takes time, like calculations or
  downloading files, isolates can help you keep the app responsive.

---

## 📦 Summary

* **Isolates** = Separate workers (or rooms) that can run tasks **at the same time**.
* They don’t share memory but **send messages** to communicate.
* Isolates help speed up programs by running tasks **in parallel**.
* Great for handling **big jobs** that might slow down the main program.

