# 📌 Zama Commit Helper... by @admirkhen

This script helps you easily create **multiple commits** to meet contribution requirements like the **Zama Dev Guild “10 Commits”** rule — without fuss or risky tricks.

---

## ⚡ What this does

- 📂 Creates a **new GitHub repository** for you.
- 📝 Makes **multiple unique commits** with simple, clean notes.
- 🚀 Pushes everything to your GitHub **automatically**.

You run **one script** — done in minutes!

---

## 🧩 Requirements

✅ You need a **GitHub Personal Access Token (PAT)**.

---

## 🔑 How to get your PAT

1️⃣ Go to 👉 [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens)  
2️⃣ Click **“Generate new token (classic)”**  
3️⃣ Name it, like: `my-zama-token`  
4️⃣ ✅ Tick **`repo`** (for repo access) — that’s enough.  
5️⃣ Click **Generate**.  
6️⃣ ⚡ Copy your token immediately — looks like: ghp_ABC123Xyz9990abcdef...


> 🔐 **Important:** Keep your PAT secret — never share it.  
> If leaked, **revoke** and make a new one.

---

## ✅ How to use this script

1️⃣ Clone this repo:
```bash
git clone https://github.com/emmogrin/zama.git
cd zama
chmod +x zama-commit.sh
./zama-commit.sh
```

The script will:

Prompt you for your GitHub username.

Prompt you for your PAT (paste it carefully).

Create a new repo called zama-commits (or your custom name).

Generate clean commits & push them.



---

💚 Result

You’ll see your new repo on GitHub.

You’ll have 10+ unique commits with real timestamps.

✅ You’re good for the Zama Dev Guild “10 commits” check.



---

Made with ❤ by @admirkhen
