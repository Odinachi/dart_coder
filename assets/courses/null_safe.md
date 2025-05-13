# Null Safety

Imagine you have a **toy box**, and sometimes it's **empty** — there's nothing inside.
So when you open it and reach in... 😟 Uh-oh! There’s **nothing to play with**.

That **empty** or **nothing** is called `null` in Dart.

But if you're not careful, trying to play with `null` can break your whole game!

---

## 💥 The Problem: Playing with Nothing

```dart
String? toy;

void main() {
  print(toy.length); // ❌ Oh no! toy is null! It crashes!
}
```

😢 This causes an error! Because `toy` is empty, it doesn't have a `length` — that’s like trying to count a toy that
isn’t there!

---

## ✅ The Solution: Null Safety

Dart says:

> “Let’s make sure we **never play with nothing** by mistake.”

So it has **null safety** — a way to **keep your program safe** from null errors.

---

## 🧠 How Null Safety Works

### 1. **Normal variables** can't be null:

```dart

String toy = 'Teddy Bear'; // ✅ Safe! Always has a value
```

If you try to leave it empty:

```dart

String toy = null; // ❌ Error: Not allowed!
```

---

### 2. Use `?` to say “this can be empty”:

```dart

String? toy = null; // ✅ This is okay
```

The `?` means:

> “Hey, this might be empty, and I’m okay with that.”

---

### 3. Check Before You Play

```dart
void main() {
  String? toy = null;

  if (toy != null) {
    print(toy.length); // ✅ Only use it when it's not null
  } else {
    print('No toy to play with 😢');
  }
}
```

---

### 4. Use `!` if You're Super Sure

```dart

String? toy = 'Car';

void main() {
  print(toy!.length); // ✅ Use `!` only when you know it's not null
}
```

But ⚠️ Warning! If it’s actually null, your program crashes!

---

### 5. Provide a Backup Toy (`??`)

```dart

String? toy = null;
print
(
toy
??
'
No toy found
'
); // ✅ Use another value if it's null
```

Output:

```
No toy found
```

---

## 💡 Summary

| Symbol | Means...                                   |
|--------|--------------------------------------------|
| `?`    | “This can be empty (nullable)”             |
| `!`    | “I **promise** this is not empty!”         |
| `??`   | “Use this **backup** if the value is null” |

---

## 🎉 So remember:

**Null Safety** keeps you safe from trying to play with something that doesn’t exist.

Dart says:

* ✅ “Always use toys (values) that are there.”
* ❓ “If a toy might not be there, say so with a `?`.”
* ⚠️ “Don’t blindly play with `null`, or you’ll crash your game!”

