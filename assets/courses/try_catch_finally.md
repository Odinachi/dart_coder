# try-catch-finally

## 🧠 What’s `try-catch-finally`?

Imagine you're trying to open a **cookie jar** 🍪 on the top shelf.
You **try** to get it, but OOPS! 😱 You knock it over and it breaks 💥

So what do you do?

* You **try** to get the cookies 🍪
* If something goes wrong, you **catch** the mess and clean it up 🧹
* And **finally**, you wash your hands 🧼 — no matter what happened!

👉 That’s what `try-catch-finally` does in Dart:

> It **tries** to run some code,
> **catches** errors if they happen,
> and **finally** does something important — no matter what!

---

## 🍪 Simple Dart Example

```dart
void main() {
  try {
    int result = 10 ~/ 0; // Oh no! Division by zero 💥
    print('Result: $result');
  } catch (e) {
    print('Something went wrong: $e');
  } finally {
    print('This will always run — cleaning up! 🧼');
  }
}
```

### 🧠 Output:

```
Something went wrong: IntegerDivisionByZeroException
This will always run — cleaning up! 🧼
```

> Dart **tried** to divide 10 by 0 ❌
> Dart **caught** the error 💢
> Dart **finally** ran the cleanup 🧼

---

## 🛠️ Another Example: Breaking a Toy

```dart
void playWithToy() {
  try {
    print('Playing with toy 🚂');
    throw Exception('Oops! Toy broke 💥');
  } catch (e) {
    print('Caught error: $e');
  } finally {
    print('Putting toys away 🧸');
  }
}

void main() {
  playWithToy();
}
```

### 🧠 Output:

```
Playing with toy 🚂
Caught error: Exception: Oops! Toy broke 💥
Putting toys away 🧸
```

---

## ✅ Summary Table

| Keyword   | What it does                                |
|-----------|---------------------------------------------|
| `try`     | Try something that might go wrong           |
| `catch`   | Catch and handle the error if it happens    |
| `finally` | Always runs, for cleanup or important stuff |

---

## 🎉 So remember:

* **`try`** = “I’ll give it a go!” 🎯
* **`catch`** = “Oops! Let me fix that.” 💢
* **`finally`** = “Let me clean up and finish.” 🧼

Just like trying to grab cookies and cleaning up after a mess — even if something goes wrong!

