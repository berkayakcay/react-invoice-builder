const ImgConverterToBase64 = (urlImg: string) => {
  var img = new Image();
  img.src = urlImg;
  img.crossOrigin = 'Anonymous';

  var canvas = document.createElement('canvas'),
    ctx = canvas.getContext('2d')!;

  canvas.height = img.naturalHeight;
  canvas.width = img.naturalWidth;
  ctx.drawImage(img, 0, 0);

  var b64 = canvas.toDataURL(urlImg).replace(/^data:image.+;base64,/, '');
  return b64;
};

export default ImgConverterToBase64;
