# Streams

Imagine you're watching your favorite **cartoon channel** 📺.

The TV doesn’t show all the episodes at once — it plays **one by one** ⏱️
Each episode arrives **in order**, and you just **keep watching**.

That’s a **Stream** in Dart!

👉 A **Stream** means:

> “I’ll give you **lots of values**, one at a time, over time.”

---

## 🚰 Real-Life Analogy

| Real Life                   | Dart Stream                                 |
|-----------------------------|---------------------------------------------|
| TV playing episodes 📺      | `Stream<String>`                            |
| Water flowing in a tap 🚰   | Events flowing from a stream                |
| You listen as it happens 👂 | You “listen” to the stream with `.listen()` |

---

## 🧪 Code Example: A Simple Stream

```dart
Stream<String> watchCartoons() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Episode 1 🎬';

  await Future.delayed(Duration(seconds: 1));
  yield 'Episode 2 🎬';

  await Future.delayed(Duration(seconds: 1));
  yield 'Episode 3 🎬';
}
```

> `async*` means: "This function gives many values over time"
> `yield` means: "Here’s one of them!"

---

## 🎧 Listening to a Stream

```dart
void main() {
  Stream<String> cartoonStream = watchCartoons();

  cartoonStream.listen((episode) {
    print('Now watching: $episode');
  });

  print('Waiting for cartoons... 🍿');
}
```

### 🧠 Output:

```
Waiting for cartoons... 🍿
Now watching: Episode 1 🎬
Now watching: Episode 2 🎬
Now watching: Episode 3 🎬
```

Your app **listens** to the stream and reacts when each episode (value) arrives.

---

## 🛠️ Stream Terms You Should Know

| Word        | What It Means                              |
|-------------|--------------------------------------------|
| `Stream`    | A flow of values over time 🚰              |
| `async*`    | A function that returns a stream           |
| `yield`     | Sends out one value from the stream 📦     |
| `.listen()` | Start watching/listening to the stream 👂  |
| `await for` | A nicer way to watch each value one by one |

---

## ✅ Using `await for` Instead of `.listen()`

```dart
void main() async {
  print('Cartoons are about to start...');

  await for (String episode in watchCartoons()) {
    print('Watching: $episode');
  }

  print('All cartoons are done! 🎉');
}
```

### 🧠 Output:

```
Cartoons are about to start...
Watching: Episode 1 🎬
Watching: Episode 2 🎬
Watching: Episode 3 🎬
All cartoons are done! 🎉
```

> `await for` is like saying: “Wait and watch each episode one by one.”

---

## ⚠️ Streams Can Also Fail

Sometimes the cartoon channel might break. You can catch that too:

```dart
Stream<String> brokenTV() async* {
  yield 'Episode 1 🎬';
  throw '📺 TV signal lost!';
}

void main() {
  brokenTV().listen(
          (episode) {
        print('Watching: $episode');
      },
      onError: (error) {
        print('Error: $error');
      },
      onDone: () {
        print('TV is off now.');
      }
  );
}
```

### 🧠 Output:

```
Watching: Episode 1 🎬
Error: 📺 TV signal lost!
TV is off now.
```

---

## 🧃 Summary

| Concept     | What It Means                                |
|-------------|----------------------------------------------|
| `Stream`    | Like a pipe that sends many values over time |
| `yield`     | Send one item into the stream                |
| `listen()`  | Start listening to each value                |
| `await for` | Wait for each value one by one               |
| `onError`   | Catch when something goes wrong              |
| `onDone`    | Do something when it ends                    |

---

## 🎉 Final Thoughts

A **Stream** is like your favorite TV channel or a water pipe:

* You get pieces (episodes, drops) **over time**
* You can **watch** or **listen**
* It ends when all the values are done!

> “You don’t drink the whole water pipe at once… You sip. One drop at a time 💧”

