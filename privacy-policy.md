# Receipt Metadata Manager — Privacy Policy

  **Last updated:** May 11, 2026

  Receipt Metadata Manager ("the extension") is a Chrome browser extension developed by Manuel Zapata. for use by my friends only to import expense receipts from Google Drive and submit them as
  reimbursement drafts to Ramp.

  ## Data we handle

  The extension processes the following data on the user's device:

  - **Google Drive OAuth access token** — obtained via Google's OAuth flow with the `drive.readonly` scope. Used solely to enumerate and download receipt files from the user's `Expenses/` folder in Google
   Drive. Stored in `chrome.storage.local` until the user signs out or the extension is uninstalled.
  - **Ramp session token** — read from the user's signed-in Ramp web session at `ramp.com`. Used to authenticate API calls that create reimbursement drafts. Stored in `chrome.storage.local` until the user
   signs out, the session expires, or the extension is uninstalled.
  - **Receipt metadata and images** — read from the user's Google Drive. May include vendor names, transaction amounts, dates, memos, attendee names, and Slack member IDs. These are transmitted to the
  Ramp API as part of reimbursement draft submissions. The extension does **not** persist receipt content or metadata locally after a draft has been submitted.
  - **Upload history** — a per-month record of which receipts have been submitted to Ramp (Drive expense ID → Ramp reimbursement ID, with timestamp). Stored in `chrome.storage.local` so the extension can
  mark already-submitted receipts and avoid duplicate uploads. The user can clear this from the extension's Settings tab at any time.

  ## How we use it

  All data is processed on the user's device. The extension:

  - Calls the Google Drive API to read files the user has authorized
  - Calls the Ramp API on the user's behalf to create reimbursement drafts
  - Stores the data described above in the browser's local storage on the user's machine

  The extension does **not** transmit any data to any server operated anyone other than Ramp or Google. It does **not** use analytics, advertising, or third-party tracking.

  ## Data sharing

  Data is only transmitted to:

  - **Google** — for Drive API calls authorized by the user via OAuth
  - **Ramp** — for reimbursement API calls authenticated with the user's existing Ramp session

  We do not sell, rent, or otherwise share user data with any third party. We do not use user data for purposes unrelated to the extension's stated function, and we do not use it to determine
  creditworthiness or for lending purposes.

  ## User controls

  - **Sign out / clear tokens:** Settings tab inside the extension popup
  - **Clear upload history:** Settings tab inside the extension popup
  - **Revoke Google access:** https://myaccount.google.com/permissions
  - **Revoke completely:** uninstall the extension from `chrome://extensions`. This removes all locally stored data.
