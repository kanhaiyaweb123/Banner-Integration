(function () {
    const apiUrl = "http://localhost.bannerintegration.com/api/banner_api.php";

    fetch(apiUrl)
        .then(response => response.json())
        .then(data => {
            if (!data.image_url) return;

            let banner = document.createElement("a");
            banner.href = data.link;
            banner.target = "_blank";

            let img = document.createElement("img");
            img.src = data.image_url;
            img.alt = data.alt_text;
            img.style.width = data.width + "px";
            img.style.height = data.height + "px";
            img.style.position = "fixed";
            img.style[data.position] = "10px";
            img.style.zIndex = "9999";

            banner.appendChild(img);
            document.body.appendChild(banner);
        })
        .catch(error => console.error("Banner fetch error:", error));
})();
