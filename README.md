# SplitViewForAll
Demonstration of a specific use of SplitViewController for consistency across iOS devices.

Ideas and concepts
- Taget iOS8+
- Primary: Split View controller that stays with AllVisible for iPad-Landscape, iPad-Portrait, and iPhone(all)-Landscape
- SizeTraitViewController: overrides Size class so UIViewController will show AllVisible on iPhone 4s, 5, and 6.
- SplitViewController: Fixes initial display for AllVisible, and sets display state AllVisible for iPad Portrait
- MasterController: Standard except subclass of UIViewController instead of UITableViewController for more display control
- DetailController: Standard
