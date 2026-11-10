// Shared scripts for every page.

// Close the sidebar when clicking anywhere outside it.
(function () {
  var toggle = document.querySelector('.sidebar-toggle');
  var sidebar = document.querySelector('#sidebar');
  var checkbox = document.querySelector('#sidebar-checkbox');
  if (!toggle || !sidebar || !checkbox) return;

  document.addEventListener('click', function (e) {
    var target = e.target;
    if (!checkbox.checked ||
        sidebar.contains(target) ||
        target === checkbox || target === toggle) return;
    checkbox.checked = false;
  }, false);
})();

// Fill the decorative hexagon strip so it is as tall as the content box.
// The strip names its content box in data-target and its row height in data-row-height.
(function () {
  var strip = document.getElementById('hex-strap');
  if (!strip) return;
  var content = document.getElementById(strip.getAttribute('data-target'));
  var rowHeight = parseFloat(strip.getAttribute('data-row-height'));
  if (!content || !rowHeight) return;

  var rows = content.clientHeight / rowHeight;
  for (var i = 0; i < rows; i++) {
    var count = (i % 2 === 0) ? 3 : 2;
    for (var j = 0; j < count; j++) {
      var hex = document.createElement('div');
      hex.className = 'hex';
      strip.appendChild(hex);
    }
    strip.appendChild(document.createElement('br'));
  }
})();
