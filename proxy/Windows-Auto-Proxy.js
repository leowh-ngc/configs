function FindProxyForURL(url, host) {
    var proxy = "PROXY localhost:13169; SOCKS5 localhost:13168";

    return useProxy(host) ? proxy : "DIRECT";
}

function useProxy(host) {
    var proxyHosts = [
        "*steampowered.com",
        "*steamcommunity.com",
        "*steamstatic.com",
        "*steamuserimages-a.akamaihd.net",
        "*steamserver.net",
        "*steam-api.com",
        "*steambroadcast.akamaized.net",
        "*media.sketchfab.com",
        "*steamcdn-a.akamaihd.net",
        "*.github.com",
        "github.com",
        "*.githubusercontent.com",
        "*youtube.com",
    ];

    for (var proxyHost in proxyHosts) {
        if (shExpMatch(host, proxyHosts[proxyHost]))
            return true;
    }
    return false;
}