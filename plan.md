## Plan: Cinx Admin Panel Implementation

Dự án Flutter áp dụng kiến trúc Feature-First, BLoC, Dependency Injection (get_it), GoRouter và Dio. Giao diện sử dụng Glassmorphism với tone màu trắng xanh dương pastel.

**Steps**

**Phase 1: Project Initialization & Core (parallel with UI Design)**
1. Cập nhật `pubspec.yaml`: Thêm các package chuẩn theo `instruction.md` (`flutter_bloc`, `get_it`, `injectable`, `go_router`, `dio`, `retrofit`, `freezed`, `json_serializable`, `flutter_secure_storage`, `fpdart`).
2. Thiết lập cấu trúc thư mục cốt lõi (`lib/core`, `lib/shared`, `lib/features`).
3. Cấu hình Theme (`core/theme`): Tạo `AppTheme` với bộ màu Pastel White-Blue, định nghĩa Custom Glassmorphism Theme/Decorations trong `core/constants/app_sizes.dart` và `shared/widgets`.
4. Thiết lập Router (`core/router/app_router.dart`) sử dụng GoRouter, với Guard check Auth State.
5. Cấu hình Network & DI: Tạo `DioClient` với Logger và Base URL. Cấu hình `injectable`.

**Phase 2: Authentication & Token Flow (*depends on Phase 1*)**
1. Định nghĩa `data/models/token_response_dto` và `auth_request_dto`.
2. Viết `AuthRemoteDataSource` (`/api/v1/auth/login`, `/api/v1/auth/refresh-token`).
3. Tạo `AuthInterceptor` cho Dio: Đính kèm Access Token, tự động gọi Refresh Token khi response 401, handle logout khi refresh thất bại.
4. Phát triển `AuthRepository` & Domain UseCases (Login, Logout, GetToken).
5. Lập trình `AuthBloc` quản lý state (Initial, Loading, Authenticated, Unauthenticated).
6. UI: Trang Đăng Nhập phong cách Glassmorphism.

**Phase 3: Dashboard Statistics (*depends on Phase 2*)**
1. Data Layer: Tạo models cho `DashboardMetricsResponse` (`/api/v1/statistics/dashboard`).
2. Domain & Presentation: `DashboardBloc` fetch metrics, `DashboardPage` hiển thị thống kê tổng quan (Revenue, Users, Top Courses) dùng Glassmorphism Cards.

**Phase 4: Course Management (*depends on Phase 2*)**
1. Data Layer: Models cho `CourseResponse`, `CategoryResponse`. Data Source gọi `/api/v1/courses` với query parameters (page, status, categoryId, sort - *nhớ escape JSON string cho sort*). Các API `/approve`, `/reject`.
2. Domain: `GetCoursesUseCase`, `ApproveCourseUseCase`, `RejectCourseUseCase`.
3. Presentation: 
   - `CourseListBloc`, `CourseListPage`: Danh sách khóa học có bộ lọc. Tích hợp ScrollController để lắng nghe kéo tới cuối cập nhật thêm data.
   - `CourseDetailBloc`, `CourseDetailPage`: Xem chi tiết và xử lý Action (Approve / Reject với dialog nhập lý do).

**Phase 5: User & Voucher Management (*depends on Phase 2*)**
1. **User Management**: 
   - Gọi `/api/v1/users` lấy danh sách. Tạo `UserListBloc` và `UserListPage`. Chứa controller Infinite scrolling.
2. **Voucher Management (CRUD)**:
   - Data Layer: Models `VoucherResponse`, `CreateVoucherRequest`, Data Source `/api/v1/vouchers`.
   - Domain & Presentation: `VoucherBloc` handle Create, Read, Delete. Giao diện forms và list quản lý voucher.

**Phase 6: Notifications (*depends on Phase 2*)**
1. Data Layer: Models `UserNotificationResponse`, APIs `/api/v1/notifications`, `/toggle-read`, `/unread-count`.
2. Presentation: `NotificationBloc` handle fetching real-time/polling unread count, display list, mark as read. Thêm Notification Badge lên AppBar/Sidebar.

**Relevant files**
- `lib/core/network/dio_client.dart` — Cấu hình Dio base + interceptors cho Token flow.
- `lib/core/theme/app_theme.dart` — Set up bảng màu pastel trắng/xanh & Theme chủ đạo.
- `lib/core/router/app_router.dart` — Quản lý routing chính.
- `lib/shared/widgets/glass_container.dart` — Widget dùng chung để tạo hiệu ứng Glassmorphism suốt app.
- `lib/shared/widgets/infinite_scroll_list.dart` — Component tái sử dụng cho danh sách dài.

**Verification**
1. Chạy `flutter pub run build_runner build --delete-conflicting-outputs` thành công sau khi define các Freezed/Injectable classes.
2. Login thành công & Token được lưu trữ bằng `flutter_secure_storage`. Gọi API giả lập 401 để test Interceptor có tự reload Refresh Token hay không.
3. Nhớ test cuộn hết danh sách load ra page tiếp theo.
4. Chạy `flutter format` & `flutter analyze` cho ra kết quả 0 issues theo chuẩn instruction.md.

**Decisions**
- Ứng dụng này chỉ dành cho Admin.
- Tích hợp **Infinite scrolling** (Phân trang vô tận, auto-scroll) cho tất cả các danh sách dài (Khóa học, User, Voucher, Notification).
- Sử dụng GoRouter Redirect để block người dùng chưa đăng nhập.
- Hiệu ứng Glassmorphism sẽ được đóng gói thành Base Component để tiện reuse trong Dashboard, Listing Cards.