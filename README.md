# 🚀 [ELearning Admin App]

Một ứng dụng Flutter hiện đại được xây dựng với tư duy hướng tính năng (Feature-First) và Clean Architecture, tập trung vào hiệu năng và khả năng mở rộng.

## 📌 Tổng Quan
Dự án này áp dụng cấu trúc **Feature-first**, giúp tách biệt các luồng nghiệp vụ thành các module độc lập. Cách tiếp cận này giúp đội ngũ phát triển dễ dàng quản lý code, giảm thiểu xung đột và tối ưu hóa quá trình kiểm thử.

## 🏗️ Kiến Trúc Dự Án (Feature-First)

Ứng dụng được tổ chức theo cấu trúc sau:

```text
lib/
├── src/
│   ├── features/               # Các tính năng chính của ứng dụng
│   │   ├── [feature_name]/     # Ví dụ: authentication, shop, v.v.
│   │   │   ├── data/           # Repositories, DTOs, Data sources
│   │   │   ├── domain/         # Entities, Use cases, Models
│   │   │   └── presentation/   # UI (Screens, Widgets), Controllers/Providers
│   │   └── ...
│   ├── shared/                 # Các thành phần dùng chung cho toàn bộ dự án
│   │   ├── constants/          # Hằng số (Colors, Sizes, Strings)
│   │   ├── widgets/            # Các UI components tái sử dụng
│   │   ├── utils/              # Helper functions, Extensions
│   │   └── services/           # Global services (Storage, API Client)
│   ├── app.dart                # Cấu hình chính của MaterialApp/CupertinoApp
│   └── main.dart               # Điểm khởi đầu của ứng dụng
└── ...
```

### Tại sao lại chọn Feature-first?
- **Modularity:** Dễ dàng tìm kiếm và chỉnh sửa code liên quan đến một tính năng cụ thể.
- **Scalability:** Thuận tiện khi thêm mới các tính năng lớn mà không làm rối cấu trúc hiện tại.
- **Testing:** Hỗ trợ viết Unit Test và Widget Test tập trung theo từng module nghiệp vụ.

## 🛠️ Công Nghệ Sử Dụng
- **Framework:** Flutter (Stable)
- **State Management:** Bloc 
- **Networking:** Dio

## 🚀 Bắt Đầu

### Cài đặt
1. Clone repository:
   ```bash
   git clone https://github.com/iamkvnn/cinx-flutter
   ```
2. Cài đặt các dependencies:
   ```bash
   flutter pub get
   ```
3. Chạy lệnh build runner:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. Khởi chạy ứng dụng:
   ```bash
   flutter run
   ```

## 🧪 Kiểm Thử
Chạy bộ kiểm thử để đảm bảo mọi thứ hoạt động ổn định:
```bash
flutter test
```