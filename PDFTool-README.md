# ShipDocs PDF Tool

A small companion to **ShipDocs QA**. It does two jobs on a folder of ship PDFs,
**offline**, with nothing installed:

- **Unlock** — open PDFs that are locked or blocked from printing/editing. Three
  ways: remove the restriction, open with a known password, or recover a
  forgotten one (it tries your hint words and every 4-digit PIN).
- **OCR** — turn *scanned* PDFs (pictures of pages, not searchable) into
  searchable ones, in English, and it can read drawings labelled sideways or
  upside-down. The result can then be indexed by ShipDocs QA.

Press **Scan folder** first and it lists which files need unlocking and which
need OCR — so you know the job before you start.

---

## Is it safe?

Same as ShipDocs QA: **nothing is installed**, **no internet**, and there is no
packed program of ours for an antivirus to worry about. The two engines it uses
(mupdf and tesseract) are WebAssembly files — data, not installed software.

Your files are never changed: results are saved **next to the original** with
`(unlocked)` or `(readable)` added to the name.

---

## Setting it up

Keep this `pdf_tools` folder **inside** your `ShipDocsQA` folder — it reuses the
same Node.js engine from `ShipDocs QA\runtime\node`.

1. Run **`unpack.bat`** once. It unpacks the engine files using Windows' own
   PowerShell — nothing is installed. You can delete the `.zip` files afterwards.
2. Run **`start.bat`**. A browser page opens.
3. Press **Scan folder**, then use the **Unlock** and **OCR** tabs.

By default it works on your ShipDocs QA `documents` folder. Recovered passwords
are written to `recovered-passwords.txt` in this folder.
