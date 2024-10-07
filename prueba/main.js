const { app, BrowserWindow } = require('electron');
const path = require('path');
const { exec } = require('child_process');

function createWindow() {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    }
  });

  // Carga tu archivo index.html
  win.loadFile('public/index.html');

  // Si estás usando un servidor PHP local, puedes hacer algo como esto:
  exec('php -S localhost:8000 -t public', (err, stdout, stderr) => {
    if (err) {
      console.error(`Error: ${stderr}`);
      return;
    }
    console.log(`Servidor PHP iniciado: ${stdout}`);
  });

  // Si prefieres cargar la app desde un servidor PHP local:
  // win.loadURL('http://localhost:8000');
}

app.whenReady().then(() => {
  createWindow();
  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});
