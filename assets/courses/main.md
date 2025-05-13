# Main

Imagine you're getting ready for the day. You wake up, brush your teeth, eat breakfast, and then go to school. You
follow a plan — a list of things to do in order.

In Dart, the `main()` function is like that morning plan. It's the **starting point** — the first thing Dart looks for
and runs when it opens your program.

---

## 🏠 Real-Life Example: Getting Ready for School

Let’s say you are the computer. Your mom tells you what to do in the morning using a list:

1. Wake up
2. Brush your teeth
3. Eat breakfast
4. Go to school

We can write that in Dart like this:

```dart
void main() {
  print('Wake up');
  print('Brush your teeth');
  print('Eat breakfast');
  print('Go to school');
}
```

When Dart runs this program, it starts at `main()` and does each thing in order!

---

## 👶 What Does `main()` Mean?

- `main` is the name of the special function.
- `()` means we are calling or starting it.
- `void` means it doesn’t give anything back (just does the work).
- `{}` is where we put the list of things to do.

---

## 🍳 Another Example: Cooking Pancakes

```dart
void main() {
  print('Get flour');
  print('Add milk');
  print('Add eggs');
  print('Mix everything');
  print('Cook on the stove');
  print('Eat pancakes!');
}
```

The computer will follow this recipe step-by-step. But it only starts **because of `main()`**.

---

## 💡 Summary

- The `main()` function is like your morning routine.
- It tells Dart what to do, step-by-step.
- Without `main()`, Dart wouldn’t know where to start.

So remember: **Every Dart program starts with `main()` — just like every day starts when you wake up!** 🌞

