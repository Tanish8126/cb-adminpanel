import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../models/recent_file.dart';
import '../../../utils/constants/constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Transactions",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: DataTable2(
                columnSpacing: 16,
                minWidth: 600,
                columns: const [
                  DataColumn(
                    label: Text("Amount"),
                  ),
                  DataColumn(
                    label: Text("Date"),
                  ),
                  DataColumn(
                    label: Text("Status"),
                  ),
                ],
                rows: List.generate(
                  demoRecentFiles.length,
                  (index) => recentFileDataRow(demoRecentFiles[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      const DataCell(
        Text("200"),
      ),
      DataCell(Text(fileInfo.date!)),
      const DataCell(Text("Captured")),
    ],
  );
}
