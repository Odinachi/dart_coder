# Higher-Order Functions

Imagine you have a **magic box** 📦.

This magic box doesn’t hold toys or snacks...

It holds **other helpers**! Like:

* 🧑‍🍳 A cookie chef
* 🎨 A coloring artist
* 🧼 A cleanup crew

Whenever you need help, you **give** the box a helper, and it **does the job with it**.

👉 That’s what a **higher-order function** is:

> A function that **takes another function** as a **parameter** or **returns** a function.

---

## 🍪 Real-Life Example: Let’s Bake Cookies

```dart
void bakeCookies(Function onFinished) {
  print('Baking cookies... 🍪');
  onFinished(); // Call the helper function when done!
}
```

This function:

* bakes cookies
* then calls another function you gave it

Now let's use it:

```dart
void main() {
  bakeCookies(() {
    print('Cookies are ready! Time to eat! 😋');
  });
}
```

🎉 Output:

```
Baking cookies... 🍪
Cookies are ready! Time to eat! 😋
```

> You gave the baking function a **helper function** to run after baking.

---

## 🧑‍🍳 Reusable Helper

```dart
void sayDone() {
  print('I’m done! ✅');
}

void doSomething(Function taskDone) {
  print('Doing something important...');
  taskDone();
}

void main() {
  doSomething(sayDone);
}
```

Output:

```
Doing something important...
I’m done! ✅
```

---

## 🪄 A Function Returning a Function

A higher-order function can also **give you a new function**:

```dart
Function createGreeter(String name) {
  return () {
    print('Hello, $name!');
  };
}

void main() {
  var greetTom = createGreeter('Tom');
  greetTom(); // Output: Hello, Tom!
}
```

> You made a **greeting machine** — give it a name, and it returns a greeter function!

---

## 🧠 Summary

| Term                  | Means...                                          |
|-----------------------|---------------------------------------------------|
| Higher-Order Function | A function that takes OR returns another function |
| `Function()`          | Dart type for a function                          |
| Anonymous Function    | A function without a name                         |

---

## 🎉 So remember:

A **Higher-Order Function** is like a **magic box** 🧠📦
You give it a **helper function**, and it uses it or gives you one back!

It makes your code:

* More **flexible**
* More **reusable**
* More **fun**, like calling your own little helpers!

