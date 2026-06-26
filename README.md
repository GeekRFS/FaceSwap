# FaceSwap

Real-time face swapping for webcams.
Supports **NVIDIA**, **AMD**, and **Intel** GPUs via **DirectX 12**.

---

## Quick Start

1. Run **`FaceSwap.exe`**
2. Choose your language: **English** or **Russian**
3. Click **"Attach Photo"** and select a face image
4. Click **START**
5. In Telegram / Zoom / Discord, select **Unity Video Capture** as your camera

> On the first launch, Windows will display an **Administrator (UAC)** prompt to install the virtual camera. Click **Yes**.

---

## Settings

| Option               | Description                                                     |
| -------------------- | --------------------------------------------------------------- |
| **Mirror**           | Mirrors the image (like a selfie camera)                        |
| **Square**           | Outputs a square frame, ideal for Telegram video messages       |
| **Single Face Only** | Improves performance by swapping only the largest detected face |

---

## Virtual Camera

The virtual camera is installed **automatically** the first time you click **START**.

If the camera does not appear in your applications:

* Run **`register_camera.bat`** as Administrator (Right-click → **Run as administrator**)
* Restart Telegram / Zoom / Discord

To remove the virtual camera, run **`unregister_camera.bat`** as Administrator.

> **Close OBS Studio** before using FaceSwap, as it may occupy the virtual camera.

---

## Moving to Another PC

Copy the entire **FaceSwap** folder, including the `_internal` and `vendor` directories.

**Python installation is not required.**

---

## Troubleshooting

| Problem             | Solution                                                                                |
| ------------------- | --------------------------------------------------------------------------------------- |
| Camera doesn't open | Close OBS Studio, approve the UAC prompt, or run `register_camera.bat` as Administrator |
| Webcam is busy      | Close other applications using the webcam                                               |
| Low FPS             | Enable **Single Face Only**                                                             |
| Face not detected   | Use a clearer photo with the face fully visible                                         |

---

## Folder Structure

```text
FaceSwap/
├── FaceSwap.exe          ← Application executable
├── _internal/            ← Do not delete
├── vendor/               ← Virtual camera driver
├── register_camera.bat   ← Manual virtual camera installation
└── unregister_camera.bat ← Remove the virtual camera
```

---

## Notes

* Supports Windows 10 and Windows 11
* Compatible with NVIDIA, AMD, and Intel GPUs
* Works with Telegram, Zoom, Discord, OBS, and other applications supporting virtual cameras

---

*Use responsibly. Only swap faces with the consent of everyone involved.*
