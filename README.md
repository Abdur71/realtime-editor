# realtime-editor
This is a real time problem solving project for DataSynthis company internship project
Here’s the complete GitHub-ready Markdown version of your blog. It uses clean structure, code blocks, and readability-optimized formatting.

***

# 🚀 Building TeamSync Editor: Offline Collaboration, Conflict Resolution & Version History — All in One  
**By Abdur | November 2025 | #CTF #WebDev #BanglaTech**

When I first read the **TeamSync Editor** challenge PDF, I knew this wasn’t just another rich text editor.  
It was a call to build something resilient, collaborative, and educationally impactful — especially for teams working in low-bandwidth or offline-first environments.

So I built **TeamSync Editor**, a modular, bilingual-friendly editor that supports:

- ✅ Rich text formatting (bold, italic, headings, lists, alignment)
- ✅ Table insertion with styled layout (like MS Word)
- ✅ Image, link, and comment support
- ✅ Auto-save and version history
- ✅ Conflict resolution with dual-version tracking
- ✅ PDF export for every version
- ✅ Dark mode toggle for accessibility

---

## 🌐 Offline Collaboration with Auto-Save

**TeamSync Editor** uses a smart auto-save system that stores content every second of inactivity.  
Even if users go offline, their changes are preserved locally and synced when they reconnect.

```
editor.addEventListener("input", () => {
  clearTimeout(timeout);
  timeout = setTimeout(autoSave, 1000);
});
```

---

## 🔁 Conflict Detection & Resolution

When two users edit the same paragraph offline and reconnect, the editor detects the conflict and shows a clean UI:

⚠️ *“Multiple users edited the same section. Choose which version to keep.”*

Both versions are saved to history with labels like:

- 🟦 Local (My Version)  
- 🟥 Remote (Server Version)

This ensures transparency and lets users restore or export either version later.

---

## 🕒 Version History with PDF Export

Every saved version appears in the sidebar with:

- Timestamp  
- Label (Auto-save, Conflict, Manual)  
- Preview of first few lines  
- 📄 PDF export button  

```
exportToPDF(content, timestamp) {
  const doc = new jsPDF();
  doc.text(`TeamSync Version - ${timestamp}`, 10, 10);
  doc.text(content.replace(/<[^>]+>/g, ''), 10, 20, { maxWidth: 180 });
  doc.save(`TeamSync_${timestamp}.pdf`);
}
```

This makes it easy to audit, share, or archive any version — especially useful for educators and remote teams.

---

## 🌙 Dark Mode for Accessibility

A simple toggle in the header lets users switch between light and dark themes.  
Preferences are saved locally for a consistent experience.

```
toggle.addEventListener("change", () => {
  document.body.classList.toggle("dark");
  localStorage.setItem(
    "theme",
    document.body.classList.contains("dark") ? "dark" : "light"
  );
});
```

---

## 🧠 What I Learned

- How to design for offline-first collaboration  
- How to handle real-time conflicts without WebSockets  
- How to build modular features with clean UX  
- How to make technical tools accessible across languages  

---

## 📦 What’s Next?

Planned enhancements include:

- Side-by-side version comparison  
- Role-based access (viewer/editor)  
- Bangla export and annotation support  

If you’re interested in contributing, testing, or using **TeamSync Editor** in your classroom or team — let’s connect!

---

## 🔗 Connect

- **GitHub Repo:** [realtime-editor](https://github.com/Abdur71/realtime-editor/tree/main)  
- **Email:** [abdurrafiu7@gmail.com](mailto:abdurrafiu7@gmail.com)  
- 🌐 #TeamSyncEditor #OfflineCollab #BanglaTech #CTFChallenge #WebTools

***

Would you like me to add a **"How to Run Locally"** setup guide section for the README to make it more developer-friendly?
