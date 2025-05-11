# Switch-Case

## 🎯 What is Switch-Case?

Imagine you're at an ice cream shop 🍦

The person asks: “What flavor do you want?”

You say “Strawberry!” 🍓

They check a list:

- If it’s Chocolate → give chocolate 🍫
- If it’s Vanilla → give vanilla 🍨
- If it’s Strawberry → give strawberry 🍓
- Otherwise → say “We don’t have that flavor!”

This is what **switch-case** does — it helps Dart **choose from many options** quickly!

---

## 🔄 The Switch-Case Code

```dart
void main() {
  String flavor = 'Strawberry';

  switch (flavor) {
    case 'Chocolate':
      print('Here is your chocolate ice cream! 🍫');
      break;
    case 'Vanilla':
      print('Here is your vanilla ice cream! 🍨');
      break;
    case 'Strawberry':
      print('Here is your strawberry ice cream! 🍓');
      break;
    default:
      print('Sorry, we don’t have that flavor! 😢');
  }
}
```

---

## 🧱 How it Works

- `switch` is like the ice cream menu
- Each `case` is a flavor choice
- `break` tells Dart to stop after picking one
- `default` is what happens if nothing matches

---

## 🧁 Real-Life Example

You: “I want strawberry!”
Dart checks the list and gives you strawberry. 🍓

Try changing the flavor:

```dart

String flavor = 'Vanilla';
```

Now Dart will give you vanilla 🍨

---

## 💡 Summary

- Use **switch-case** when you have **many options** to pick from.
- It’s easier and cleaner than lots of `if` and `else if`.
- Think of it like a vending machine — press a button and get your treat! 🍭

So remember: **Switch-case helps Dart make decisions like a snack machine — pick a number and get a surprise! 🎁**
