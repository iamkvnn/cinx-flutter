import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../data/models/category_response.dart';
import '../../data/models/create_category_request.dart';
import '../bloc/category_list_bloc.dart';
import '../bloc/category_list_event.dart';
import '../bloc/category_list_state.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<CategoryListBloc>()..add(const CategoryListEvent.fetch()),
      child: const _CategoryListView(),
    );
  }
}

class _CategoryListView extends StatefulWidget {
  const _CategoryListView();

  @override
  State<_CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<_CategoryListView> {
  void _showCreateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<CategoryListBloc>(),
        child: const _CategoryFormDialog(),
      ),
    );
  }

  void _showEditDialog(BuildContext context, CategoryResponse category) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<CategoryListBloc>(),
        child: _CategoryFormDialog(category: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: BlocListener<CategoryListBloc, CategoryListState>(
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
            // Header & Search
            Container(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  ElevatedButton.icon(
                    onPressed: () => _showCreateDialog(context),
                    icon: const Icon(Icons.add),
                    label: const Text('Add Category'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // List
            Expanded(
              child: BlocBuilder<CategoryListBloc, CategoryListState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.errorMessage != null && state.categories.isEmpty) {
                    return Center(child: Text('Error: ${state.errorMessage}'));
                  }
                  if (state.categories.isEmpty) {
                    return const Center(child: Text('No categories found.'));
                  }

                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      final cat = state.categories[index];
                      return _CategoryCard(
                        category: cat,
                        onEdit: () => _showEditDialog(context, cat),
                      );
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

class _CategoryCard extends StatelessWidget {
  final CategoryResponse category;
  final VoidCallback onEdit;

  const _CategoryCard({
    required this.category,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        category.name ?? '',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Actions
            Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.edit_outlined,
                    color: Colors.blueAccent,
                  ),
                  onPressed: onEdit,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryFormDialog extends StatefulWidget {
  final CategoryResponse? category;

  const _CategoryFormDialog({this.category});

  @override
  State<_CategoryFormDialog> createState() => _CategoryFormDialogState();
}

class _CategoryFormDialogState extends State<_CategoryFormDialog> {
  final _nameCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.category != null) {
      final c = widget.category!;
      _nameCtrl.text = c.name ?? '';
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  void _submit() {
    if (_nameCtrl.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Name is required')));
      return;
    }

    final req = CreateCategoryRequest(name: _nameCtrl.text.trim());

    if (widget.category != null && widget.category!.id != null) {
      context.read<CategoryListBloc>().add(
        CategoryListEvent.update(widget.category!.id!, req),
      );
    } else {
      context.read<CategoryListBloc>().add(CategoryListEvent.create(req));
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.category != null ? 'Edit Category' : 'Add Category'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameCtrl,
              decoration: const InputDecoration(labelText: 'Name *'),
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
          child: Text(widget.category != null ? 'Save' : 'Create'),
        ),
      ],
    );
  }
}
