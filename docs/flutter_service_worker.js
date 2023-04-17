'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "404.html": "a9f81131ce5c4a74c51f98c6c8ef4e7e",
"assets/AssetManifest.json": "494d7b61d6669c993e2cbe5558fe6f91",
"assets/FontManifest.json": "966f9b01ff1b780da6196a15c87c3179",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/Ubuntu/Ubuntu-Bold.ttf": "896a60219f6157eab096825a0c9348a8",
"assets/fonts/Ubuntu/Ubuntu-Light.ttf": "c9d68f61bf89fde6a24da697bc45d6f9",
"assets/fonts/Ubuntu/Ubuntu-Medium.ttf": "d3c3b35e6d478ed149f02fad880dd359",
"assets/fonts/Ubuntu/Ubuntu-Regular.ttf": "84ea7c5c9d2fa40c070ccb901046117d",
"assets/images/binary-blue.png": "0de7cea6d6375aa2f4cb0ac61bfcc31e",
"assets/images/game-dev/astromon.gif": "2697886eea7eb9144b66b0f148aa691a",
"assets/images/game-dev/candy-ball.gif": "4cb24a85db013311398d35206d80a4f3",
"assets/images/game-dev/color-hexagon.gif": "374c7d9f447016b386be99e1d0f72a15",
"assets/images/game-dev/cube-slider.gif": "27bbfc59e40c01d27c0ac9b2fa209903",
"assets/images/game-dev/multiplayer-proto.gif": "faa446b9670550c6851d14b094748805",
"assets/images/game-jam/extra-monster.gif": "2d1e172d01cbb4dd7c7217e7bf44008f",
"assets/images/game-jam/full-gameplay.gif": "23e1985a997ca1ab01d7f57bef37aa01",
"assets/images/game-jam/gameplay-loop.gif": "a8a4956fc22a44dd4ab7e9045792b787",
"assets/images/game-jam/shooting-monsters.gif": "b96128a855a1d7d2be3f351685ef2bbc",
"assets/images/game-jam/tileset.gif": "d22e236654a57fdd2d0f07eae84c9f79",
"assets/images/game-jam.png": "fccbf5c88c9cdb6bedda31bea4378d7a",
"assets/images/hackathon/drawing.gif": "d7031bcf0ef9aeb8e45a8b71dc349559",
"assets/images/hackathon/equations.gif": "d0da656fd7164d0c5dbb8a7315b853eb",
"assets/images/hackathon/load-pdf.gif": "967f8c3ece5b5926135338335c792d20",
"assets/images/hackathon/login.gif": "5e55a2bad829e457a0967834ac600690",
"assets/images/hackathon/ruler-and-protractor.gif": "f4be6225e2cd17ea0c67979f825410b4",
"assets/images/hackathon/save-equations.gif": "3001911e305ebbaf9795c9db66512e62",
"assets/images/hackathon/save-pdf.gif": "ef0f3f843ccc1de7fca8363ec4025019",
"assets/images/hackathon.png": "2e1a554b1658e227a8e59bbfd8945d06",
"assets/images/html-code.png": "7303b75d8e1745e7b30e95d1a2688a54",
"assets/images/jam-theme.png": "a6af2c18851a28a4e109b0b458b238ed",
"assets/images/laptop-wallpaper.png": "9eca8c1ceda129fa42e3537c57c0670f",
"assets/images/mac-grey.png": "65710784c398b41ff537f6ab721317ee",
"assets/images/macbook.png": "714b7e7a51b7e93eb76724aacb2dbbfb",
"assets/images/matrix.png": "39337cb201c71fb5859442452b23cd83",
"assets/images/profile-picture.png": "690a8376421067bfed00290fbdce494a",
"assets/images/pxl-logo.png": "188eb3034db8b594d11df6c75f9c0a62",
"assets/images/pxl-x-factor-people.png": "835109fb95dc218aa7dd3f9bcc6edda5",
"assets/images/pxl-x-factor.png": "79875c4f1bbc447ff3b7128a492d6f43",
"assets/images/thalento.png": "fd14b5ff7d420d16629b82a7a3c121af",
"assets/images/transparent.png": "ebdeac6cb5c5e658f02a51d475177ee4",
"assets/images/unity.png": "10451faa289f6242d67e32ea4acf8dc9",
"assets/NOTICES": "d86625ee08597a5741fd6b7d282761d5",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b00363533ebe0bfdb95f3694d7647f6d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "0a94bab8e306520dc6ae14c2573972ad",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "9cda082bd7cc5642096b56fa8db15b45",
"assets/shaders/ink_sparkle.frag": "4c3794fb9880b6cda73e2747aec37ac1",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "97de0cd42a5af07914e63f02f2a71e37",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "6eb9e240212be9e80f745d16770f6e76",
"index.html": "7d1f0bd5cb479916c99ec0da694efa79",
"/": "7d1f0bd5cb479916c99ec0da694efa79",
"main.dart.js": "8d0d25a76b56280854e83ad3991cf41d",
"manifest.json": "3fc29f9294b755bca0378065b89e216e",
"version.json": "bd341ba74d38c530da636604a427deda"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
