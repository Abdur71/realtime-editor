const editor = document.getElementById("editor");
let timeout = null;

// --- Formatting ---
function format(command, value = null) {
  if (command === "heading") {
    document.execCommand("formatBlock", false, value);
  } else {
    document.execCommand(command, false, value);
  }
}

// --- Insert Image ---
function insertImage() {
  const url = prompt("Enter image URL");
  if (url) {
    document.execCommand("insertImage", false, url);
  }
}

// --- Insert Table ---
function insertTable() {
  const rows = parseInt(prompt("Enter number of rows"));
  const cols = parseInt(prompt("Enter number of columns"));

  if (isNaN(rows) || isNaN(cols) || rows <= 0 || cols <= 0) {
    alert("Please enter valid positive numbers for rows and columns.");
    return;
  }

  const table = document.createElement("table");
  table.classList.add("styled-table");

  for (let i = 0; i < rows; i++) {
    const tr = document.createElement("tr");
    for (let j = 0; j < cols; j++) {
      const td = document.createElement("td");
      td.innerText = `Row ${i + 1}, Col ${j + 1}`;
      tr.appendChild(td);
    }
    table.appendChild(tr);
  }

  const selection = window.getSelection();
  if (selection.rangeCount > 0) {
    const range = selection.getRangeAt(0);
    range.deleteContents();
    range.insertNode(table);
  } else {
    editor.appendChild(table);
  }
}

// --- Add Comment ---
function addComment() {
  const comment = prompt("Enter your comment");
  if (comment) {
    const span = document.createElement("span");
    span.setAttribute("title", comment);
    span.style.backgroundColor = "#ffff99";
    span.innerText = window.getSelection().toString();
    const range = window.getSelection().getRangeAt(0);
    range.deleteContents();
    range.insertNode(span);
  }
}

// --- Insert Link ---
function insertLink() {
  const url = prompt("Enter link URL");
  if (url) {
    document.execCommand("createLink", false, url);
  }
}

// --- Auto Save ---
function autoSave() {
  const content = editor.innerHTML;
  fetch("../backend/save.php", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ content })
  })
  .then(res => res.json())
  .then(data => {
    if (data.status === "success") {
      document.getElementById("last-saved").innerText = new Date().toLocaleTimeString();
    }
  });
}

editor.addEventListener("input", () => {
  clearTimeout(timeout);
  timeout = setTimeout(autoSave, 1000);
});

// --- Load Document ---
setInterval(() => {
  fetch("../backend/load.php")
    .then(res => res.json())
    .then(data => {
      if (document.activeElement !== editor) {
        editor.innerHTML = data.content;
      }
    });
}, 3000);

// --- Presence Polling ---
setInterval(() => {
  fetch("../backend/presence.php")
    .then(res => res.text())
    .then(data => {
      document.getElementById("presence").innerText = "Active users: " + data;
    });
}, 5000);

// --- Load Version History ---
function loadVersions() {
  fetch("../backend/versions.php")
    .then(res => res.json())
    .then(data => {
      const container = document.getElementById("versions");
      container.innerHTML = "";
      data.forEach(v => {
        const div = document.createElement("div");

        const preview = v.content.replace(/<[^>]+>/g, '').slice(0, 100);

        div.innerHTML = `
          <strong>${v.updatedAt}</strong><br>
          <em style="color:#888;">${v.label}</em><br>
          <span style="color:#555;">${preview}...</span>
        `;
        div.style.cursor = "pointer";
        div.style.marginBottom = "10px";
        div.title = preview;
        div.onclick = () => editor.innerHTML = v.content;

        const exportBtn = document.createElement("button");
        exportBtn.innerText = "📄 PDF";
        exportBtn.style.marginLeft = "10px";
        exportBtn.onclick = () => exportToPDF(v.content, v.updatedAt);
        div.appendChild(exportBtn);

        container.appendChild(div);
      });
    });
}

loadVersions(); // Load version history on page load

// --- Conflict Resolution ---
function resolveConflict(localContent, remoteContent) {
  if (localContent === remoteContent) return;

  saveConflictVersion("Local (My Version)", localContent);
  saveConflictVersion("Remote (Server Version)", remoteContent);

  document.getElementById("conflict-ui").classList.remove("hidden");

  document.getElementById("keep-local").onclick = () => {
    applyResolution(localContent);
  };

  document.getElementById("keep-remote").onclick = () => {
    applyResolution(remoteContent);
  };
}

function applyResolution(content) {
  editor.innerHTML = content;
  document.getElementById("conflict-ui").classList.add("hidden");
  autoSave();
}

function saveConflictVersion(label, content) {
  fetch("../backend/save.php", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ content, label })
  });
}

// --- Export to PDF ---
function exportToPDF(content, timestamp) {
  const { jsPDF } = window.jspdf;
  const doc = new jsPDF();

  const plainText = content.replace(/<[^>]+>/g, '');

  doc.setFontSize(12);
  doc.text(`TeamSync Version - ${timestamp}`, 10, 10);
  doc.setFont("courier", "normal");
  doc.text(plainText, 10, 20, { maxWidth: 180 });

  doc.save(`TeamSync_${timestamp.replace(/[: ]/g, "_")}.pdf`);
}

// --- Dark Mode Toggle ---
const toggle = document.getElementById("darkToggle");
const prefersDark = localStorage.getItem("theme") === "dark";

if (prefersDark) {
  document.body.classList.add("dark");
  toggle.checked = true;
}

toggle.addEventListener("change", () => {
  document.body.classList.toggle("dark");
  localStorage.setItem("theme", document.body.classList.contains("dark") ? "dark" : "light");
});