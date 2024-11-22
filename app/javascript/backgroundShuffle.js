const images = [
    'url("background1.jpg")',
    'url("background2.jpg")',
    'url("background3.jpg")',
    'url("background4.jpg")'
]

function randImage()
{
    const randomIndex = Math.floor(Math.random()*images.length);
    document.body.style.backgroundImage=images[randomIndex];
}

window.onload = randImage();