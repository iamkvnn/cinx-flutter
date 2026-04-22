import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/theme/app_theme.dart';

/// A scaffold with a persistent Glassmorphism sidebar for admin pages.
class AdminScaffold extends StatelessWidget {
  const AdminScaffold({
    super.key,
    required this.child,
    this.appBarActions,
  });

  final Widget child;
  final List<Widget>? appBarActions;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;

    if (isMobile) {
      return Scaffold(
        drawer: _SidebarDrawer(),
        appBar: AppBar(
          title: const Text('Cinx Admin'),
          actions: appBarActions,
        ),
        body: child,
      );
    }

    return Scaffold(
      body: Row(
        children: [
          _DesktopSidebar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class _NavItem {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.path,
  });

  final IconData icon;
  final String label;
  final String path;
}

const _navItems = [
  _NavItem(icon: Icons.dashboard_rounded, label: 'Dashboard', path: '/dashboard'),
  _NavItem(icon: Icons.school_rounded, label: 'Courses', path: '/courses'),
  _NavItem(icon: Icons.people_rounded, label: 'Users', path: '/users'),
  _NavItem(icon: Icons.local_offer_rounded, label: 'Vouchers', path: '/vouchers'),
  _NavItem(icon: Icons.notifications_rounded, label: 'Notifications', path: '/notifications'),
  _NavItem(icon: Icons.person_rounded, label: 'Profile', path: '/profile'),
];

class _DesktopSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppTheme.primaryColor.withValues(alpha: 0.9),
            AppTheme.secondaryColor.withValues(alpha: 0.95),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.p24),
            _SidebarLogo(),
            const SizedBox(height: AppSizes.p32),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p12),
                children: _navItems
                    .map((item) => _NavTile(item: item))
                    .toList(),
              ),
            ),
            _LogoutTile(),
            const SizedBox(height: AppSizes.p16),
          ],
        ),
      ),
    );
  }
}

class _SidebarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.primaryColor.withValues(alpha: 0.9),
              AppTheme.secondaryColor.withValues(alpha: 0.95),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: AppSizes.p24),
              _SidebarLogo(),
              const SizedBox(height: AppSizes.p32),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p12),
                  children: _navItems
                      .map((item) => _NavTile(item: item))
                      .toList(),
                ),
              ),
              _LogoutTile(),
              const SizedBox(height: AppSizes.p16),
            ],
          ),
        ),
      ),
    );
  }
}

class _SidebarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withValues(alpha: 0.25),
            border: Border.all(color: Colors.white.withValues(alpha: 0.5), width: 2),
          ),
          child: const Icon(Icons.admin_panel_settings_rounded, color: Colors.white, size: 32),
        ),
        const SizedBox(height: AppSizes.p8),
        const Text(
          'Cinx Admin',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}

class _NavTile extends StatelessWidget {
  const _NavTile({required this.item});
  final _NavItem item;

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).matchedLocation;
    final isActive = currentLocation.startsWith(item.path);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.p4),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
          onTap: () => context.go(item.path),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.p16,
              vertical: AppSizes.p12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
              color: isActive
                  ? Colors.white.withValues(alpha: 0.25)
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                Icon(
                  item.icon,
                  color: isActive ? Colors.white : Colors.white70,
                  size: 20,
                ),
                const SizedBox(width: AppSizes.p12),
                Text(
                  item.label,
                  style: TextStyle(
                    color: isActive ? Colors.white : Colors.white70,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p12),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
          onTap: () => context.go('/login'),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.p16,
              vertical: AppSizes.p12,
            ),
            child: Row(
              children: const [
                Icon(Icons.logout_rounded, color: Colors.white70, size: 20),
                SizedBox(width: AppSizes.p12),
                Text(
                  'Logout',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
