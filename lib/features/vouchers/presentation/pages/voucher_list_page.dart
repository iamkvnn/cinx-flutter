import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/models/voucher_response.dart';
import '../../data/models/create_voucher_request.dart';
import '../bloc/voucher_list_bloc.dart';
import '../bloc/voucher_list_event.dart';
import '../bloc/voucher_list_state.dart';

class VoucherListPage extends StatelessWidget {
  const VoucherListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<VoucherListBloc>()..add(const VoucherListEvent.fetch()),
      child: const _VoucherView(),
    );
  }
}

class _VoucherView extends StatefulWidget {
  const _VoucherView();

  @override
  State<_VoucherView> createState() => _VoucherViewState();
}

class _VoucherViewState extends State<_VoucherView> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch() {
    context.read<VoucherListBloc>().add(
          VoucherListEvent.fetch(query: _searchController.text.trim()),
        );
  }

  void _showCreateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<VoucherListBloc>(),
        child: const _CreateVoucherDialog(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: BlocListener<VoucherListBloc, VoucherListState>(
        listener: (context, state) {
          if (state.actionSuccessMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.actionSuccessMessage!),
                backgroundColor: const Color(0xFF4CAF50),
              ),
            );
          }
          if (state.actionErrorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.actionErrorMessage!),
                backgroundColor: Colors.redAccent,
              ),
            );
          }
        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(AppSizes.p24),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Voucher Management',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => _showCreateDialog(context),
                    icon: const Icon(Icons.add),
                    label: const Text('Add Voucher'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search vouchers by code...',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            _onSearch();
                          },
                        ),
                      ),
                      onSubmitted: (_) => _onSearch(),
                    ),
                  ),
                  const SizedBox(width: AppSizes.p16),
                  ElevatedButton(
                    onPressed: _onSearch,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.p24, vertical: AppSizes.p16),
                    ),
                    child: const Text('Search'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.p16),
            Expanded(
              child: BlocBuilder<VoucherListBloc, VoucherListState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.errorMessage != null && state.vouchers.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline,
                              size: 48, color: Colors.redAccent),
                          const SizedBox(height: AppSizes.p16),
                          Text(state.errorMessage!),
                          const SizedBox(height: AppSizes.p16),
                          ElevatedButton.icon(
                            onPressed: () => context
                                .read<VoucherListBloc>()
                                .add(const VoucherListEvent.fetch()),
                            icon: const Icon(Icons.refresh),
                            label: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  }

                  if (state.vouchers.isEmpty) {
                    return const Center(child: Text('No vouchers found.'));
                  }

                  return ListView.builder(
                    padding: const EdgeInsets.all(AppSizes.p16),
                    itemCount: state.vouchers.length +
                        (state.hasReachedMax ? 0 : 1),
                    itemBuilder: (context, index) {
                      if (index >= state.vouchers.length) {
                        if (!state.isFetchingMore) {
                          context
                              .read<VoucherListBloc>()
                              .add(const VoucherListEvent.loadMore());
                        }
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(AppSizes.p16),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      return _VoucherCard(voucher: state.vouchers[index]);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _VoucherCard extends StatelessWidget {
  const _VoucherCard({required this.voucher});
  final VoucherResponse voucher;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.p8, vertical: AppSizes.p8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
        border: Border.all(
            color: AppTheme.primaryColor.withValues(alpha: 0.3),
            width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background icon
          Positioned(
            right: -20,
            bottom: -20,
            child: Icon(
              Icons.local_offer,
              size: 120,
              color: AppTheme.secondaryColor.withValues(alpha: 0.1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSizes.p24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              voucher.code ?? 'UNKNOWN',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (voucher.quantity != null)
                            Text(
                              '(${voucher.quantity} left)',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      if (voucher.description != null)
                        Text(
                          voucher.description!,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      const SizedBox(height: 8),
                      Text(
                        'Discount: -${voucher.discountAmount ?? 0}đ',
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Min Purchase: ${voucher.minPurchaseAmount ?? 0}đ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                // Action Buttons
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.delete_outline,
                          color: Colors.redAccent),
                      onPressed: () {
                        if (voucher.id != null) {
                          _showConfirmDelete(context, voucher.id!, voucher.code ?? '');
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmDelete(BuildContext context, String id, String code) {
    showDialog(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Delete Voucher'),
        content: Text('Are you sure you want to delete voucher "$code"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogCtx).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(dialogCtx).pop();
              context.read<VoucherListBloc>().add(VoucherListEvent.delete(id));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}

class _CreateVoucherDialog extends StatefulWidget {
  const _CreateVoucherDialog();

  @override
  State<_CreateVoucherDialog> createState() => _CreateVoucherDialogState();
}

class _CreateVoucherDialogState extends State<_CreateVoucherDialog> {
  final _codeCtrl = TextEditingController();
  final _discountCtrl = TextEditingController();
  final _minPurchaseCtrl = TextEditingController();
  final _maxDiscountCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final _qtyCtrl = TextEditingController();
  DateTime? _validFrom;
  DateTime? _validTo;

  @override
  void dispose() {
    _codeCtrl.dispose();
    _discountCtrl.dispose();
    _minPurchaseCtrl.dispose();
    _maxDiscountCtrl.dispose();
    _descCtrl.dispose();
    _qtyCtrl.dispose();
    super.dispose();
  }

  void _submit() {
    if (_codeCtrl.text.isEmpty ||
        _discountCtrl.text.isEmpty ||
        _minPurchaseCtrl.text.isEmpty ||
        _qtyCtrl.text.isEmpty ||
        _validFrom == null ||
        _validTo == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required fields')),
      );
      return;
    }

    final req = CreateVoucherRequest(
      code: _codeCtrl.text.trim().toUpperCase(),
      discountAmount: int.tryParse(_discountCtrl.text) ?? 0,
      minPurchaseAmount: int.tryParse(_minPurchaseCtrl.text) ?? 0,
      maxDiscountAmount: _maxDiscountCtrl.text.trim(),
      description: _descCtrl.text.trim(),
      quantity: int.tryParse(_qtyCtrl.text) ?? 0,
      validFrom: _validFrom!.toIso8601String(),
      validTo: _validTo!.toIso8601String(),
    );

    context.read<VoucherListBloc>().add(VoucherListEvent.create(req));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create Voucher'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _codeCtrl,
              decoration: const InputDecoration(labelText: 'Code *'),
              textCapitalization: TextCapitalization.characters,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _descCtrl,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _discountCtrl,
                    decoration:
                        const InputDecoration(labelText: 'Discount Amt *'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _qtyCtrl,
                    decoration: const InputDecoration(labelText: 'Quantity *'),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _minPurchaseCtrl,
              decoration: const InputDecoration(labelText: 'Min Purchase Amt *'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () async {
                      final d = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                      );
                      if (d != null) setState(() => _validFrom = d);
                    },
                    child: Text(_validFrom == null
                        ? 'Valid From *'
                        : _validFrom!.toString().split(' ')[0]),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () async {
                      final d = await showDatePicker(
                        context: context,
                        initialDate: _validFrom ?? DateTime.now(),
                        firstDate: _validFrom ?? DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                      );
                      if (d != null) setState(() => _validTo = d);
                    },
                    child: Text(_validTo == null
                        ? 'Valid To *'
                        : _validTo!.toString().split(' ')[0]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Create'),
        ),
      ],
    );
  }
}
