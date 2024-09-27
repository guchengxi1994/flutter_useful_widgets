'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js_8.part.js": "acaa51980218d01101f20bdb0099bce3",
"main.dart.js_22.part.js": "4003f9bbcbb9a433c930f796531a7362",
"main.dart.js_11.part.js": "dfac3e56bf4fc78036b4907f59c1d2d2",
"main.dart.js_12.part.js": "5888bcf4ea8324e2e2aaf6ac1e7ee97a",
"assets/AssetManifest.json": "8660a169aa5464965d944ce50c443d1b",
"assets/assets/image/test.jpg": "d29803a866263bb0183b730868785977",
"assets/AssetManifest.bin.json": "aa15e71df56f9e997741f64ca907255e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "d0bca45457b2e623dbce072b777bd56f",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "b0b9f2fc79e22c52e538781dd0ddfa6a",
"assets/fonts/MaterialIcons-Regular.otf": "f3c9e8e9033dd5ba7e89ff9931e9ca4a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"main.dart.js": "3db5d81a03bac6c674a6faffc56e5f86",
"main.dart.js_14.part.js": "4d18d4224f1f81280274b8d3de325d9d",
"main.dart.js_3.part.js": "8fe0e18606f4bafefcedfc39dbbffb92",
"main.dart.js_5.part.js": "87053c54d922f0ef1ee980bf5f4b5e5d",
"main.dart.js_15.part.js": "87dd45b78627fc1d2e867fd9a4404b99",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"main.dart.js_21.part.js": "8c3ec4cfbc086c5d8e119d17e17b7aad",
"flutter_bootstrap.js": "54149a5546eb488ce1f856fae1bdfbe1",
"main.dart.js_1.part.js": "3b769017fab9aa33077411dd1502152d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js_20.part.js": "e2b12c35723d1cb2285a80c72809ec81",
"main.dart.js_10.part.js": "555008f8c695a5a7494de12083cf7f48",
"main.dart.js_23.part.js": "05fc4a5850053001412cbbd1e4996a6c",
"main.dart.js_7.part.js": "baab7776be3c73f74e5fc0177d6b445e",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"main.dart.js_17.part.js": "8245efc8042cc51b8b4a90af78756b56",
"index.html": "72332ebeb39fc024d2f457bbea657805",
"/": "72332ebeb39fc024d2f457bbea657805",
"version.json": "c4c9fe55d6b3f31e564325e25cb981ee",
"main.dart.js_13.part.js": "533fed1742c33ee2d60c240ad482a116",
"main.dart.js_2.part.js": "2e87f2dd93af8157d96d1ea1fdaaab27",
"main.dart.js_16.part.js": "22bdaf15c8e86f0cceb1672df79e3841",
"manifest.json": "3fb096f1c106f62f574748f8d41b16fd",
"main.dart.js_4.part.js": "d116f33c10d0a1ddfee178dec1807cb7",
"main.dart.js_19.part.js": "3ad89c09a1a62550d3a891c547cb9c48",
"main.dart.js_18.part.js": "4fe66f36f5103d6f073b0d74a9ba9f4c",
"main.dart.js_9.part.js": "66f26dfa5320d85663a8506f8169463c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
