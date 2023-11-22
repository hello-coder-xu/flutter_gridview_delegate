import 'package:flutter/material.dart';

class GridViewDelegatePage extends StatefulWidget {
  final bool fixedCrossAxisCountType;
  final double mainAxisExtent;
  const GridViewDelegatePage({
    super.key,
    required this.fixedCrossAxisCountType,
    required this.mainAxisExtent,
  });

  @override
  State<GridViewDelegatePage> createState() => _GridViewDelegatePageState();
}

class _GridViewDelegatePageState extends State<GridViewDelegatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.fixedCrossAxisCountType
            ? 'fixedCrossAxisCount ${widget.mainAxisExtent}'
            : 'maxCrossAxisExtent ${widget.mainAxisExtent}'),
      ),
      body: GridView.builder(
        gridDelegate: widget.fixedCrossAxisCountType
            ? SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: widget.mainAxisExtent,
              )
            : SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: widget.mainAxisExtent,
              ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.primaries[index % Colors.primaries.length],
          );
        },
      ),
    );
  }
}
