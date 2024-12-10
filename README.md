# Member Space

Selamat datang di **Member Space**! 🎉

## Deskripsi Proyek

**Member Space** adalah aplikasi mobile yang dirancang sebagai bahan ajar praktikum untuk pembelajaran mobile programming. Proyek ini memberikan pemahaman mendalam tentang berbagai konsep penting dalam pengembangan aplikasi mobile menggunakan Flutter.

## Fitur Utama

Dalam pembelajaran ini, kamu akan menjelajahi berbagai fitur dan teknik, antara lain:

- **Penggunaan Asset Generator**: Mempelajari cara mengelola dan mengoptimalkan aset visual dalam aplikasi.
  
- **State Management dengan Bloc**: Mengimplementasikan pola Bloc untuk mengelola state aplikasi secara efisien dan terstruktur.

- **REST API**: Menghubungkan aplikasi dengan layanan web menggunakan API, untuk mendapatkan dan mengirim data.

- **Clean Architecture**: Memahami prinsip Clean Architecture untuk membangun aplikasi yang terorganisir dan mudah dipelihara.

- **Pembuatan Komponen**: Membuat komponen UI yang reusable dan responsif untuk meningkatkan pengalaman pengguna.

## Instalasi

Untuk menjalankan proyek ini di perangkatmu, ikuti langkah-langkah berikut:

1. Clone repositori ini:
   ```bash
   git clone https://github.com/dhindonk/members-space.git
2. Masuk ke direktori proyek:
   ```bash
   cd members-space
3. Install dependensi:
   ```bash
   flutter pub get
4. Jalankan aplikasi:
   ```bash
   flutter run

## API Documentation

Base URL: `https://dhinstag.my.id`

### Authentication

#### Login
- **URL**: `https://dhinstag.my.id/api/login`
- **Method**: `POST`
- **Body**:
  ```json
  {
    "email": "string",
    "password": "string"
  }
  ```
- **Response Success (200)**:
  ```json
  {
    "user": {
      "id": "integer",
      "email": "string",
      "role": "string",
      "verify": "boolean",
      "created_at": "timestamp",
      "updated_at": "timestamp",
      "profile": {
        "full_name": "string",
        "gender": "string",
        "phone": "string",
        // ... other profile data
      }
    },
    "token": "string"
  }
  ```
- **Response Error (401)**:
  ```json
  {
    "message": "Invalid credentials"
  }
  ```

#### Logout
- **URL**: `https://dhinstag.my.id/api/logout`
- **Method**: `POST`
- **Headers**: 
  ```
  Authorization: Bearer {token}
  ```
- **Response Success (200)**:
  ```json
  {
    "message": "Logged out"
  }
  ```
- **Response Error (404)**:
  ```json
  {
    "error": "Token not found or already logged out"
  }
  ```

### Members

#### Get All Members
- **URL**: `https://dhinstag.my.id/api/get/members`
- **Method**: `GET`
- **Headers**: 
  ```
  Authorization: Bearer {token}
  ```
- **Query Parameters**:
  - `search` (optional): Search by name, university, or email
- **Response Success (200)**:
  ```json
  {
    "message": "Success",
    "data": [
      {
        "id": "integer",
        "email": "string",
        "profile": {
          "full_name": "string",
          "university_name": "string",
          "gender": "string",
          "phone": "string"
          // ... other profile data
        }
      }
    ],
    "current_page": "integer",
    "last_page": "integer",
    "per_page": "integer",
    "total": "integer"
  }
  ```

### Other Endpoints

#### Get Banners
- **URL**: `https://dhinstag.my.id/api/banners`
- **Method**: `GET`
- **Headers**: 
  ```
  Authorization: Bearer {token}
  ```
- **Response Success (200)**:
  ```json
  {
    "message": "Success",
    "data": [
      {
        "id": "integer",
        "title": "string",
        "image": "string",
        // ... other banner data
      }
    ]
  }
  ```

#### Get Mitras
- **URL**: `https://dhinstag.my.id/api/mitras`
- **Method**: `GET`
- **Headers**: 
  ```
  Authorization: Bearer {token}
  ```
- **Response Success (200)**:
  ```json
  {
    "message": "Success",
    "data": [
      {
        "id": "integer",
        "name": "string",
        "logo": "string",
        // ... other mitra data
      }
    ]
  }
  ```

### Authentication Note
Semua endpoint kecuali login memerlukan token autentikasi yang harus disertakan dalam header request:
```
Authorization: Bearer {your_token}
```
