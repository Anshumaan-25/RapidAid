# 🚀 RapidAid

An intelligent emergency alert platform designed to provide faster, verified help in critical situations.

## Problem
In emergencies (medical, safety, or disasters), response is often delayed due to a lack of verified information, false alarms, and poor coordination. First responders are overwhelmed, and victims in real, verifiable danger get lost in the noise.

## Solution
**RapidAid** solves this by introducing a **"Dynamic Trust Score"** for every SOS alert. Our platform analyzes multiple data points to verify the legitimacy of an alert in real-time, prioritizing critical cases and routing them instantly to nearby, verified responders.

---

## ✨ Core Features

* **⚡ Real-Time SOS Alerts:** A one-tap SOS button to instantly send an alert with live GPS coordinates.
* **🧠 Dynamic Trust Score:** An intelligent scoring system that calculates the legitimacy of an alert based on:
    * **Identity Verification:** A mock DigiLocker check to verify the user's identity.
    * **Circle of Trust:** Verification requests sent to the user's pre-approved emergency contacts.
    * **Sensor Data:** (Planned) Analysis of on-device sensors (accelerometer, gyroscope) to detect events like falls or crashes.
* **🗺️ Live Geo-Mapping:** A real-time map for responders showing the location of all active alerts, color-coded by their Trust Score.
* **🧑‍🤝‍🧑 Emergency Contacts:** Users can add a "Circle of Trust" (2-6 members) who are notified during an SOS.
* **🔒 Secure Authentication:** User sign-up and login handled securely by Firebase Authentication.

---

## 💻 Tech Stack

* **Frontend:** FlutterFlow (Flutter)
* **Backend:** Firebase
    * **Cloud Functions:** (Managed in VS Code) for secure, server-side logic.
    * **Firestore
