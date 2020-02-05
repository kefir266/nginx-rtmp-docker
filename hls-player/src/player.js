const Hls = require('hls.js');
var video;
const idInterval = setInterval(function () {
  video = document.getElementById('video');
  if (video) {
    clearInterval(idInterval);
    let hlsUrl = 'http://localhost/live/test.m3u8';
    const params = getUrlVars();
    if (params.hlsurl) {
      hlsUrl = params.hlsurl;
    }
    const conf = Object.assign({
      "debug": true,
      "enableWorker": true,
      "liveBackBufferLength": 100,
      "startPosition": 10,
      "liveSyncDurationCount": 1,
      "liveMaxLatencyDurationCount": 2
    }, params);

    if(Hls.isSupported()) {
      var hls = new Hls(conf);
      hls.loadSource(hlsUrl);
      hls.attachMedia(video);
      hls.on(Hls.Events.MANIFEST_PARSED,function() {
        video.play();
      });
    }
      // hls.js is not supported on platforms that do not have Media Source Extensions (MSE) enabled.
      // When the browser has built-in HLS support (check using `canPlayType`), we can provide an HLS manifest (i.e. .m3u8 URL) directly to the video element through the `src` property.
      // This is using the built-in support of the plain video element, without using hls.js.
      // Note: it would be more normal to wait on the 'canplay' event below however on Safari (where you are most likely to find built-in HLS support) the video.src URL must be on the user-driven
// white-list before a 'canplay' event will be emitted; the last video event that can be reliably listened-for when the URL is not on the white-list is 'loadedmetadata'.
    else if (video.canPlayType('application/vnd.apple.mpegurl')) {
      video.src = hlsUrl;
      video.addEventListener('loadedmetadata',function() {
        video.play();
      });
    }
  }
}, 100);

function getUrlVars() {
  var vars = {};
  var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
    vars[key] = value;
  });
  return vars;
}

module.exports = video;