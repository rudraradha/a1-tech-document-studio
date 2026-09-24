A1 TECH — Document Studio
==========================

Contents:
  A1 Tech.bat                    Launches the app in its own app window (Chrome required).
  Create Desktop Shortcut.vbs    Run this ONCE to add an "A1 Tech" shortcut to your Desktop
                                  that shows the A1 TECH logo as its icon (see below — a plain
                                  .bat file can't show a custom icon on its own).
  index.html                     The full app (open this directly in any browser — no server, no internet required).
  assets/a1tech-logo.jpg         Standalone copy of the A1 TECH logo used in the app.
  assets/a1tech-logo.ico         The same logo converted to a Windows icon file, used by the shortcut.
  assets/a1tech-signature.png    Standalone copy of the quotation signature (transparent background).

Getting the A1 TECH logo as your launch icon:
  Windows batch (.bat) files always show the plain generic "gear" icon in Explorer/Desktop —
  Windows does not let a .bat carry its own icon. To get the A1 TECH logo as the icon you
  click to launch the app:
    1. Double-click "Create Desktop Shortcut.vbs" (once).
    2. An "A1 Tech" shortcut showing the A1 TECH logo appears on your Desktop.
    3. Launch the app from that shortcut from now on. You can also right-click it and choose
       "Pin to Taskbar" / "Pin to Start" so the logo shows there too.
  The app window itself (and its taskbar entry while running) already uses the A1 TECH logo
  as its favicon/window icon — this step is only needed for the launcher icon you click.

Notes:
- Everything the app needs (logo, signature, fonts fallback, PDF export libraries) is already
  embedded inside index.html as local data — nothing is fetched from the cloud when the page runs,
  and no data ever leaves your browser. The two files in /assets are just extra copies for your
  own records (letterhead, other documents, etc.) — the app itself does not read them.
- The signature only appears on Quotations. Invoices are left with a blank signature line for
  manual signing, as requested.
- All your saved quotations/invoices/customers are stored locally in your browser's storage.
