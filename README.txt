ShipDocs PDF Tool — offline unlock & OCR for ship documentation
===============================================================

Runs from this folder. Nothing is installed. It reuses the node.exe that ships
with ShipDocs QA (one folder up), so keep this folder inside ShipDocsQA_5.

FIRST TIME
  1. Run  unpack.bat  once. It unzips the engine files into place using
     Windows' own PowerShell — nothing is installed.
  2. Run  start.bat.  A browser opens at  http://localhost:8070

WHAT IT DOES
  Unlock tab — three ways into a protected PDF:
     * Remove restrictions  (file opens but printing/editing is blocked)
     * Open with password   (you know the password)
     * Recover password     (tries your hint words, then every 4-digit PIN)
  OCR tab — turns scanned files into searchable ones, English, and can read
     drawings labelled in any of the four directions.

  Press "Scan folder" first: it lists which files need unlocking and which need
  OCR, so you know the scope before starting.

  By default it works on the ShipDocs QA "documents" folder (..\documents).
  Change "targetDir" in config.json to point somewhere else.

  Output files are saved NEXT TO the originals, with (unlocked) or (readable)
  in the name. Originals are never changed. Recovered passwords are written to
  recovered-passwords.txt in this folder.

ENGINES
  mupdf and tesseract.js, both WebAssembly — no native programs, nothing for an
  antivirus to react to. OCR language data: vendor\tessdata\eng.traineddata.
