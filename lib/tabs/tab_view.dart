import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _currentTabView = 0;

  Widget get _tabVerticalRounded {
    return DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(
          children: [
            // Tab Bar
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: TabBar(
                unselectedLabelColor: Colors.white60,
                labelColor: Colors.black87,
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  color: Colors.white,
                ),
                tabs: [
                  Tab(text: 'Tab 01'),
                  Tab(text: 'Tab 02'),
                  Tab(text: 'Tab 03')
                ],
              ),
            ),
            // Tab Bar View
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 6),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    child: const Center(
                      child: Text('TAB 01'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 02'),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    child: const Center(
                      child: Text('TAB 03'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _tabBackgroundRounded {
    return DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(
          children: [
            // Tab bar
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(24),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.white60,
                labelColor: Colors.black87,
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey.shade400,
                ),
                indicatorPadding: const EdgeInsets.all(6),
                tabs: const [
                  Tab(text: 'Tab 01'),
                  Tab(text: 'Tab 02'),
                  Tab(text: 'Tab 03')
                ],
              ),
            ),
            // Tab Bar View
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 01'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 02'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 03'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _getTabDfIndicator {
    return DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade700,
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  TabBar(
                    unselectedLabelColor: Colors.black87,
                    labelColor: Colors.lightBlue.shade300,
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.blueGrey,
                      border: Border.all(
                          color: Colors.lightBlue.shade300, width: 1.5),
                    ),
                    // indicatorPadding: Edgese,
                    tabs: const [
                      Tab(text: 'Tab 01'),
                      Tab(text: 'Tab 02'),
                      Tab(text: 'Tab 03')
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 01'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 02'),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade700,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('TAB 03'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _switchStatement {
    switch (_currentTabView) {
      case 0:
        return _tabVerticalRounded;
      case 1:
        return _tabBackgroundRounded;
      case 2:
        return _getTabDfIndicator;
      default:
        return _tabVerticalRounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Pick a different tab bar',
              style: TextStyle(fontSize: 26)),
          Wrap(
            children: [
              ElevatedButton(
                onPressed: () => setState(() {
                  _currentTabView = 0;
                }),
                child: const Text(
                  'Background color with vertical border radius',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  _currentTabView = 1;
                }),
                child: const Text(
                  'Background color with border radius',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  _currentTabView = 2;
                }),
                child: const Text(
                  'Background color indicator different',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
          _switchStatement,
        ],
      ),
    );
  }
}
