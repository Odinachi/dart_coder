# Futures

Imagine you order a **toy online** 🧸 using your mom’s phone.

The toy doesn’t arrive right away — it comes **later** 📦
You get a **receipt** that says:

> "Your toy will arrive soon!"

That receipt is a **Future** in Dart.

👉 A **Future** means:

> “I promise I’ll give you something… but not right now.”

---

## 📦 Real-Life Analogy

* You order a toy ✅
* You get a receipt 📄 (a **Future**)
* You wait patiently ⏳
* The toy arrives later 🎉

---

## 🎯 Dart Example

```dart
Future<String> getToy() {
  return Future.delayed(Duration(seconds: 2), () {
    return '🧸 Your toy is here!';
  });
}
```

> `Future.delayed` means “Pretend it takes 2 seconds for the toy to arrive.”

---

## 🧪 Using the Future

```dart
void main() {
  print('Ordering toy...');

  getToy().then((toy) {
    print(toy); // 🧸 Your toy is here!
  });

  print('Playing while waiting... ⚽');
}
```

### 🧠 Output:

```
Ordering toy...
Playing while waiting... ⚽
🧸 Your toy is here!
```

Dart keeps running other code while the **Future** is working in the background.

---

## 🤯 Why Not Just Use a Normal Function?

Because some things take time:

* Downloading a file 📥
* Getting data from the internet 🌐
* Waiting for the pizza delivery 🍕

If Dart waited for everything to finish, your app would freeze!

---

## 🧠 What You Can Do with Futures

| What You Write             | What It Does                             |
|----------------------------|------------------------------------------|
| `Future<String>`           | Says: "I'll give you a string later"     |
| `.then((value) => ...)`    | Runs when the value is ready             |
| `.catchError((e) => ...)`  | Runs if something goes wrong 😱          |
| `.whenComplete(() => ...)` | Runs after the future — success or error |

---

## ❗ Handling Errors with Futures

```dart
Future<String> brokenToy() {
  return Future.error('Oh no! The toy is broken 💔');
}

void main() {
  brokenToy().then((toy) {
    print(toy);
  }).catchError((e) {
    print('Error: $e');
  });
}
```

### 🧠 Output:

```
Error: Oh no! The toy is broken 💔
```

---

## 🎉 Summary

| Word         | What It Means                                |
|--------------|----------------------------------------------|
| `Future`     | A value that comes **later** 🕒              |
| `then`       | What to do when it arrives 🎁                |
| `await`      | A fancy way to wait nicely (needs `async`) ⏳ |
| `catchError` | Handle problems like broken toys 💔          |

---

## 🧸 So remember:

A **Future** is like a delivery promise 📦

> “You don’t have it now… but I’ll bring it soon!”

Dart keeps playing while it waits — just like you! ⚽🎉

